#!/bin/bash

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
