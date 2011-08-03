#!/usr/bin/python
'''
 NAME: rod.py
 DESC: RenderOnDemand - takes a json description of a map to be rendered,
       Constructs the carto layer specification from it, then uses
       carto to create a mapnik style sheet.
       The map is then rendered using mapnik to create an image.
'''
import os,sys
from optparse import OptionParser
import json
import mapnik2 as mapnik

options=[]
mapfile = "weardale_vmd.mml"
xmlmapfile = "osm_carto.xml"
map_uri = "image_vmd.png"



##########################################################################
def getProjStr(projection):
    '''
    Returns the appropriate proj4 projection devinition string given the
    shortcut name 'projection'.
    Valid values for projection are 'merc' for the google spherical mercator 
    projection, or 'osgb' for the GB Ordnance survey projection.
    '''
    projStrs = {
        "merc":"+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +no_defs",
        "osgb":"+proj=tmerc +lat_0=49 +lon_0=-2 +k=0.999601 +x_0=400000 +y_0=-100000 +ellps=airy +units=m +datum=OSGB36 +no_defs no_defs"
        }
    if projection in projStrs:
        return projStrs[projection]
    else:
        print "projection %s is not valid - defaulting to 'merc'." % projection
        return projStrs['merc']



####################################################################
def getPaperSize(paperObj):
    ''' 
    Returns the papersize (w,h) which is the width and height of the paper
    in cm, based on the definition in object paperObj.
    it expects the following:
        paperObj['size'] = 'A4' etc.
        paperObj['orientation'] = 'landscape'
    if paperObj['size'] is 'custom', it expects a 'w' and a 'h' entry
        for the width and height of the paper in cm.
    '''
    print "paperObj=%s." % (paperObj.__str__())
    # Defined paper sizes in cm - default orientation is portrait.
    sizes = {'A5':(7,10),
             'A4':(14,20),
             'A3':(28,40),
             'A2':(56,80),
             'A1':(112,160),
             'A0':(224,320)}

    if not 'size' in paperObj: paperObj['size'] = 'undefined'
    if paperObj['size'] in sizes:
        (w,h) = sizes[paperObj['size']]
        if 'orientation' in paperObj:
            if (options.verbose): 
                print 'orientation = %s.' % paperObj['orientation']
            if paperObj['orientation'] == 'landscape':
                (w,h)=(h,w)
    else:
        if (options.verbose): print "size %s not found"
        (w,h) = (300,300)
        if 'w' in paperObj: w=paperObj['w']
        if 'h' in paperObj: h=paperObj['h']
    return(w,h)

###########################################################################

def renderMap(mapSpecJSON):
    '''
    Render a map to an image file, as specified in the JSON string mapSpecJSON.
    '''
    # mso = mapSpecObject
    mso = json.loads(mapSpecJSON)
    if (options.verbose): 
        print "Imported Mapspec as:\n%s\n" % (mso.__str__())
    jobID = mso['jobID']
    projection = mso['projection']
    lat = mso['origin']['lat']
    lon = mso['origin']['lon']
    scale = mso['scale']
    paper = mso['paper']['size']
    if 'resolution' in mso: 
        img_dpi = mso['resolution']
    else:
        img_dpi = 300
    print "jobID = %d." % (jobID)
    print "origin = (%f,%f)." % (lon,lat)
    print "scale = %f." % (scale)
    print "paper = %s." % (paper)

    (imgw,imgh) = getPaperSize(mso['paper'])
    print "(imgw,imgh) = (%f,%f)." % (imgw,imgh)

    projStr = getProjStr(mso['projection']);
    
    print "projStr = %s" % projStr

    prj = mapnik.Projection(projStr)
    c0 = prj.forward(mapnik.Coord(lon,lat))
    c1 = mapnik.Coord(c0.x + scale*imgw/100.,
                      c0.y + scale*imgh/100.)

    print c0,c1

    print "Making Mapnik2 compatible style from standard OSM stylesheets"
    os.system("rm %s" % xmlmapfile)
    os.system("carto %s > %s" % (mapfile,xmlmapfile))
    print "created %s" % xmlmapfile

    mapnik_scale_factor = img_dpi / 92.
    imgx = int(imgw * img_dpi / 2.54)
    imgy = int(imgh * img_dpi / 2.54)

    print "generating map...."
    m = mapnik.Map(imgx,imgy)
    mapnik.load_map(m,xmlmapfile)
    bbox = mapnik.Box2d(c0.x,c0.y,c1.x,c1.y)
    m.zoom_to_box(bbox)
    im = mapnik.Image(imgx,imgy)
    mapnik.render(m, im,mapnik_scale_factor)
    view = im.view(0,0,imgx,imgy) # x,y,width,height
    view.save(map_uri,'png')

    print "done - image stored as %s" % map_uri



##########################################################################
if __name__ == "__main__":
    print "MROD - Mapnik Rendering on Demand"

    usage = "Usage %prog [options] mapspec"
    version = "0.1"
    parser = OptionParser(usage=usage,version=version)
    parser.add_option("-v", "--verbose", action="store_true",dest="verbose",
                     help="Include verbose output")
    parser.add_option("-d", "--debug", action="store_true",dest="debug",
                     help="Include debug output")
    parser.set_defaults(
        debug=False,
        verbose=False)
    (options,args)=parser.parse_args()
   
    if (options.debug):
        options.verbose = True
        print "options   = %s" % options
        print "arguments = %s" % args
   
    if len(args)==0:
        infname = "stdin"
    else:
        infname = args[0]

    if (options.verbose): print "infname = %s" % (infname)

    if (infname=="stdin"):
        if (options.verbose): print "Reading from standard input - ctrl-d to finish"
        infile = sys.stdin
    else:
        infile = open(infname)

    mapSpecJSON = infile.read()

    if (options.verbose): print "Mapspec is:\n%s\n" % mapSpecJSON
    renderMap(mapSpecJSON)






