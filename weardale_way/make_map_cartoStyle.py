#!/usr/bin/python
#

import mapnik2 as mapnik
import sys, os


if __name__ == "__main__":

    #mapfile = "layerdefs2.mml"
    #mapfile = "osm_carto.mml"
    mapfile = "weardale.mml"
    xmlmapfile = "osm_carto.xml"
    map_uri = "image.png"

    #---------------------------------------------------
    #  Change this to the bounding box you want
    #
    #ll = (-6.5, 49.5, 2.1, 59)

    #ll = (-6.5, 49.5, 2.1, 59)
    #ll = (-1.2,54.65,-1.17,54.7)
    # kefalonia
    #ll = (20.33,38.03,20.82,38.50)
    # kefalonia_SE
    #ll = (20.575,38.03,20.82,38.265)
    # kefalonia_S
    #ll = (20.60,38.13,20.70,38.24)

    # kefalonia_katelios-skala
    #ll = (20.75,38.05,20.8,38.1)

    # kefalonia_Argostoli
    #ll = (20.47,38.16,20.5,38.2)

    #ll = (-180.,-180.,180.,180.)

    # Hartlepool
    #ll = (-1.307, 54.608, -1.111, 54.729)
    # Three Villages
    ll = (-1.311, 54.633, -1.237, 54.689)

    # Weardale
    ll = (-2.29,54.747,-2.22,54.813) 
    #---------------------------------------------------

    print "Making Mapnik2 compatible style from standard OSM stylesheets"
    os.system("rm %s" % xmlmapfile)
    os.system("carto %s > %s" % (mapfile,xmlmapfile))
    print "created %s" % xmlmapfile


    # landscape
    #imgx_cm = 40.0
    #imgy_cm = 28.0

    # A3 Portrait
    imgx_cm = 28.0
    imgy_cm = 40.0

    # A4 Portrait
    imgx_cm = 14.0
    imgy_cm = 20.0

    img_dpi = 300.0

    mapnik_scale_factor = img_dpi / 92.

    imgx = int(imgx_cm * img_dpi / 2.54)
    imgy = int(imgy_cm * img_dpi / 2.54)

    print "generating map...."
    m = mapnik.Map(imgx,imgy)
    mapnik.load_map(m,xmlmapfile)
    prj = mapnik.Projection("+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +no_defs +over")
    c0 = prj.forward(mapnik.Coord(ll[0],ll[1]))
    c1 = prj.forward(mapnik.Coord(ll[2],ll[3]))
    if hasattr(mapnik,'mapnik_version') and mapnik.mapnik_version() >= 800:
        bbox = mapnik.Box2d(c0.x,c0.y,c1.x,c1.y)
    else:
        bbox = mapnik.Envelope(c0.x,c0.y,c1.x,c1.y)
    m.zoom_to_box(bbox)
    im = mapnik.Image(imgx,imgy)
    mapnik.render(m, im,mapnik_scale_factor)
    view = im.view(0,0,imgx,imgy) # x,y,width,height
    view.save(map_uri,'png')

    print "done - image stored as %s" % map_uri

