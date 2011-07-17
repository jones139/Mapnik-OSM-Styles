#!/usr/bin/python
#
# Generates a single large PNG image for a UK bounding box
# Tweak the lat/lon bounding box (ll) and image dimensions
# to get an image of arbitrary size.
#
# To use this script you must first have installed mapnik
# and imported a planet file into a Postgres DB using
# osm2pgsql.
#
# Note that mapnik renders data differently depending on
# the size of image. More detail appears as the image size
# increases but note that the text is rendered at a constant
# pixel size so will appear smaller on a large image.

import mapnik2 as mapnik
import sys, os

if __name__ == "__main__":
    try:
        mapfile = os.environ['MAPNIK_MAP_FILE']
    except KeyError:
        mapfile = "osm2.xml"
    map_uri = "image.png"

    #---------------------------------------------------
    #  Change this to the bounding box you want
    #
    #ll = (-6.5, 49.5, 2.1, 59)
    #ll = (-1.2,54.65,-1.17,54.7)
    # kefalonia
    ll = (20.33,38.03,20.82,38.50)
    #ll = (-180.,-180.,180.,180.)
    #---------------------------------------------------

    print "Making Mapnik2 compatible style from standard OSM stylesheets"
    os.system("rm osm2.xml")
    os.system("/home/graham/OSM/code/mapnik2/utils/upgrade_map_xml/upgrade_map_xml.py osm.xml osm2.xml")
    print "created osm2.xml"

    imgx_cm = 15.0
    imgy_cm = 15.0
    img_dpi = 300.0

    mapnik_scale_factor = img_dpi / 92.

    imgx = int(imgx_cm * img_dpi / 2.54)
    imgy = int(imgy_cm * img_dpi / 2.54)

    print "generating map...."
    m = mapnik.Map(imgx,imgy)
    mapnik.load_map(m,mapfile)
    prj = mapnik.Projection("+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +no_defs +over")
    c0 = prj.forward(mapnik.Coord(ll[0],ll[1]))
    c1 = prj.forward(mapnik.Coord(ll[2],ll[3]))
    if hasattr(mapnik,'mapnik_version') and mapnik.mapnik_version() >= 800:
        bbox = mapnik.Box2d(c0.x,c0.y,c1.x,c1.y)
    else:
        bbox = mapnik.Envelope(c0.x,c0.y,c1.x,c1.y)
    m.zoom_to_box(bbox)
    im = mapnik.Image(imgx,imgy)
    mapnik.render(m, im,3)
    view = im.view(0,0,imgx,imgy) # x,y,width,height
    view.save(map_uri,'png')

    print "done - image stored as %s" % map_uri

