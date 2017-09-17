#!/bin/bash
date
find /home/ipopp/aquadaac/ -mtime +2 -print0 | xargs -0 -l1 -t rm -f
find /home/ipopp/drl/data/pub/gsfcdata/aqua/modis/level0/ -mtime +2 -print0 | xargs -0 -l1 -t rm -f
find /home/ipopp/drl/data/pub/gsfcdata/aqua/modis/level1/ -mtime +2 -print0 | xargs -0 -l1 -t rm -f
find /home/ipopp/drl/data/pub/gsfcdata/aqua/modis/level2/ -mtime +2 -print0 | xargs -0 -l1 -t rm -f
find /home/ipopp/gdfAQUA/ -mtime +2 -print0 | xargs -0 -l1 -t rm -f

#find /poes/data/hrptimages -mtime +15 -print0 | xargs -0 -l1 -t rm -f
#find /poes/data/hrptimages -mtime +1 | find /poes/data/hrptimages -mtime +15 -print0 | xargs -0 -l1 -t rm -f


