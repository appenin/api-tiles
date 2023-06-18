#! /bin/bash

# SCHEMA=$1
TABLE=$1

# pgsql2shp -f ${TABLE} -h 127.0.0.1 -p 5433 -u geouser -P geopassword geofalco ${SCHEMA}.${TABLE}
ogr2ogr -f GeoJSON ${TABLE}.geojson ${TABLE}.shp
tippecanoe --no-tile-stats --detect-shared-borders --simplify-only-low-zooms --force --coalesce-densest-as-needed -Z2 -z15 --output ${TABLE}.mbtiles ${TABLE}.geojson
rm ${TABLE}.geojson # ${TABLE}.shp ${TABLE}.shx ${TABLE}.dbf ${TABLE}.prj ${TABLE}.cpg
