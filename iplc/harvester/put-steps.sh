#!/bin/bash

if [ ! $2 ] 
then
  echo "Usage ./put-steps.sh <directory_with_steps> <username:password>"
  exit
fi

for f in $1/STEP*xml
do 
  file=`echo $f | sed -E 's/\/\//\//'`
  id=`echo $f | sed -E 's/[^0-9]*([0-9]*).*/\1/'`
  url="https://${2}@palci-harvester.reshare.indexdata.com/harvester/records/steps/${id}"
  echo PUT to $url
  curl -w '\n' -X PUT $url -H 'content-type: application/xml' -d @$f
done