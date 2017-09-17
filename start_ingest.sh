#!/bin/bash 
date
cd /home/ipopp/IPOPP_data/

find -type f -mtime -10 | xargs -i cp {} /home/ipopp/drl/data/pub/CompressedArchivedAncillary/

cd /home/ipopp/drl/tools/
./ingest_ipopp.sh
 
