#!/bin/sh
#    ll = (-2.29,54.73,-2.00,54.790) 
wget --timeout=3600 http://api.openstreetmap.org/api/0.6/map?bbox=-2.29,54.73,-2.00,54.79 -O weardale.osm
#wget --timeout=3600 http://api.openstreetmap.org/api/0.6/map?bbox=-2.29,54.747,-2.22,54.813 -O weardale.osm
#wget --timeout=3600 http://jxapi.openstreetmap.org/xapi/api/0.6/map?bbox=-2.29,54.747,-2.22,54.813 -O weardale.osm

osm2pgsql -d mapnik -S default.style -s weardale.osm

