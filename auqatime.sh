#!/bin/bash 

timestamp=$(date +"%Y-%m-%d_%M-%S")
today=$(date +"%Y-%m-%d")
year=$(date +"%Y")
doy=$(date +"%j")


echo $today
echo $year
echo $doy
cd /home/ipopp/spidtrack
./aquatwpasses
cp /home/ipopp/spidtrack/aquatwpp.log  /home/ipopp/run/doy/aquatwpp"$doy".log
grep "00/" /home/ipopp/spidtrack/aquatwpp.log |awk '{print $1 $10}'> /home/ipopp/run/doy/temp.dat

time_file=/home/ipopp/run/doy/temp.dat

for line in $(cat $time_file)
do
declare -i deg
deg=${line:23:2}
echo $deg
#for (("$deg" >= "$aqua_deg"))
#do
if [ $deg -ge 30 ];then 
  printf "%s\n" ${line:0:23} >> /home/ipopp/run/doy/"$doy".dat
fi
#done
#echo $deg

done



