#!/bin/bash 

date
cd /home/ipopp/drl/data/pub/gsfcdata/aqua/modis
find /home/ipopp/drl/data/pub/gsfcdata/aqua/modis/level2 -type d -mmin +59 -mmin -119 -exec /home/ipopp/run/runclean \;
find /home/ipopp/drl/data/pub/gsfcdata/aqua/modis/level2 -type d -mmin +59 -mmin -119 -exec /home/ipopp/modis2gdf/modisgen \;


