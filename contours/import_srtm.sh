#!/bin/bash
# import_srtm.sh
# Desc:  Imports contours based on SRTM data into a postgresql database
#        that is suitable for plotting using mapnik.
# Usage:
#        Download the srtm data files covering the area of interest into a 
#        directory containing this script and srtm_generate_hdr.sh.  
#        The srtm data files can be obtained from
#             http://dds.cr.usgs.gov/srtm/version2_1/SRTM3
#        Just run ./import_srtm.sh
#        This does a few things:
#             - Create the required header files so that GDAL can understand  
#                 the srtm data (srtm_generat_hdr.sh)
#             - Creates shapefiles containing the contours using gdal_contour.
#             - Creates a 'Contours' table in the postgresql database 
#               ('kefalonia' in this case).
#             - Imports the contours into the database using shp2pgsql.
# 
#  History:
#       April 2011 :  G. Jones - based very heavily on 
#                          http://wiki.openstreetmap.org/Contours.
#
PREP_TABLE="1"
for X in *.hgt.zip; do
	yes | ./srtm_generate_hdr.sh $X
	rm -f "${X%%.zip}"
	
	# Import 10m contours
	rm -f "${X%%.hgt.zip}.shp" "${X%%.hgt.zip}.shx" "${X%%.hgt.zip}.dbf"
	gdal_contour -i 10 -snodata 32767 -a height "${X%%.hgt.zip}.tif" "${X%%.hgt.zip}.shp"
	[ "$PREP_TABLE" ] && shp2pgsql -p -I -g way "${X%%.hgt.zip}" contours | psql -q kefalonia
	shp2pgsql -a -g way "${X%%.hgt.zip}" contours | psql -q kefalonia
	
	#rm -f "${X%%.hgt.zip}.shp" "${X%%.hgt.zip}.shx" "${X%%.hgt.zip}.dbf"
	rm -f "${X%%.hgt.zip}.bil"
	rm -f "${X%%.hgt.zip}.hdr"
	rm -f "${X%%.hgt.zip}.prj"
	rm -f "${X%%.hgt.zip}.tif"
	unset PREP_TABLE
done
