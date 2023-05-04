#!/bin/bash

IP_ADDRESS=("13.209.203.112" "3.36.118.94" "52.79.109.239" "3.39.240.191")
PORTS=("8080" "8092" "5601")
cnt=1

function port_scan {
  echo "*** Port Scan Executed at $(date) ***"
  for i in "${IP_ADDRESS[@]}"
  do
    for j in "${PORTS[@]}"
    do
      echo "Trying $i:$j..."
      nc -z $i $j
      (( cnt++ ))
      echo ""
    done
  done
  echo "-----------------------------"
  echo ""
}

while true; do
  port_scan
  sleep 60
done