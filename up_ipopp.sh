#!/bin/bash 

cd /home/ipopp/rt-stps/jsw/bin

./rt-stps-server.sh start &

sleep 10
cd /home/ipopp/drl/tools
./dashboard.sh &

 
