#!/bin/sh
wget --timeout=600 http://jxapi.openstreetmap.org/xapi/api/0.6/map?bbox=1.2880,51.1111,1.3377,51.1333 -O dover.osm
#wget --timeout=600 http://api.openstreetmap.org/api/0.6/map?bbox=-1.311492919921875,54.60786894786166,-1.110992431640625,54.729378425601766 -O hartlepool.osm

osm2pgsql -d mapnik -S default.style -s dover.osm
