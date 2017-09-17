#!/bin/bash 

timestamp=$(date +"%Y-%m-%d_%M-%S")
today=$(date +"%Y-%m-%d")
year=$(date +"%Y")
month=$(date +"%m")
last_month=$(date -d last-month +"%m")
last2_month=$(date -d -2-month +"%m")


#echo $today
#echo $year
#echo $month
#echo $last_month
#echo $last2_month

cd /home/ipopp/run/

#wget -t0 -c -np -nd -m -P /home/ipopp/IPOPP_data --ftp-user=anonymous --ftp-password=user@internet ftp://is.sci.gsfc.nasa.gov/CompressedArchivedAncillary/DRLAncillary_$year-$last2_month*.tgz

wget -t0 -c -nH -nd -m -P /home/ipopp/IPOPP_data --ftp-user=anonymous --ftp-password=user@internet ftp://is.sci.gsfc.nasa.gov/CompressedArchivedAncillary/DRLAncillary_$year-$last_month*.tgz

wget -t0 -c -nH -nd -m -P /home/ipopp/IPOPP_data --ftp-user=anonymous --ftp-password=user@internet ftp://is.sci.gsfc.nasa.gov/CompressedArchivedAncillary/DRLAncillary_$year-$month*.tgz

chown ipopp.users /home/ipopp/IPOPP_data/*.*
chmod 755 /home/ipopp/IPOPP_data/*.*

find /home/ipopp/IPOPP_data/ -type f -name  DRLAncillary_$year-$last2_month*.tgz -print0 | xargs -0 -l1 -t rm -f

 
