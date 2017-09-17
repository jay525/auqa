#!/bin/bash 
date
cd /home/ipopp/run/

find /home/ipopp/drl/data/dsm/ingest -type d -mmin +59 -mmin -119 -exec /home/ipopp/run/runstart_ingest \;
 
