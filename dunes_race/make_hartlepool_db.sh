#!/bin/sh
#wget --timeout=3600 http://jxapi.openstreetmap.org/xapi/api/0.6/map?bbox=-1.311492919921875,54.60786894786166,-1.110992431640625,54.729378425601766 -O hartlepool.osm
wget --timeout=600 http://api.openstreetmap.org/api/0.6/map?bbox=-1.311492919921875,54.60786894786166,-1.110992431640625,54.729378425601766 -O hartlepool.osm

osm2pgsql -S default.style -d mapnik -s hartlepool.osm

