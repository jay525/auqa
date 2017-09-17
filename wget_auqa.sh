#!/bin/bash 

timestamp=$(date +"%Y-%m-%d_%M-%S")
today=$(date +"%Y-%m-%d")
y=$(date +"%Y")
doy=$(date -d yesterday +"%j")
year=${y:2:2}
echo $today
echo $year
echo $doy

f=/home/ipopp/run/doy/"$doy".dat

data_dir=/home/ipopp/aquadaac

for line in $(cat $f)
do 
 h1=${line:3:2}
 m1=${line:6:1}
 h2=${line:15:2}
 m2=${line:18:1}    

 hh=$h1
 ms1=$m1
declare -i ms1
declare -i ms0
declare -i ms2
 ms0=ms1-1
 ms2=ms1+1


m=$ms1
#ms1#########################################################################################################
wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5

#m=$ms0
#ms0#########################################################################################################
#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

#/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

#/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5



m=$ms2
#ms2#########################################################################################################
wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5



hh=$h2   
me1=$m2
declare -i me1
declare -i me0
declare -i me2
 me0=me1-1
 me2=me1+1


m=$me1
#me1#########################################################################################################
wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5


m=$me0
#me0#########################################################################################################
wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5

m=$me2
#me2#########################################################################################################
wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.000.NRT ;       

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"0.001.NRT ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.000.PDS ;

wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"0.001.PDS ;

/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"0

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.000.NRT ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYD00F/Recent/MYD00F.A20"$year""$doy"."$hh""$m"5.001.NRT ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.000.PDS ;

#wget -t0 -c -nH -nd -np -m -P $data_dir  --ftp-user=pgwang --ftp-password=0105PGwang ftp://nrt3.modaps.eosdis.nasa.gov/allData/6/MYDGB0/Recent/MYDGB0.A20"$year""$doy"."$hh""$m"5.001.PDS ;

#/home/ipopp/drl/tools/daacingest.sh "$year" "$doy" "$hh""$m"5



done

#more /home/ipopp/run/doy/"$doy".dat


