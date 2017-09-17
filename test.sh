#!/bin/bash 

timestamp=$(date +"%Y-%m-%d_%M-%S")
today=$(date +"%Y-%m-%d")
year=$(date +"%Y")
month=$(date +"%m")
last_month=$(date -d last-month +"%m")
last2_month=$(date -d -2-month +"%m")


#cho $today
#echo $year
#echo $month
#echo $last_month
#echo $last2_month

find /home/ipopp/IPOPP_data/ -type f -name  DRLAncillary_$year-$last2_month*.tgz -print0 


 
