#!/bin/bash

HARVESTERS='https://reshare-test-harvester.reshare.indexdata.com'

echo "Choose harvester: "
select EP in $HARVESTERS
do
  break
done

# read -p "Username: " UN 
UN=harvester_admin
read -p "Password: " -s PW

URL=$(echo $EP | sed -E "s/:\/\//:\/\/${UN}:${PW}\@/")

curl --fail "${URL}/harvester"
if [ $? -ne 0 ]
then 
  exit
fi

for TYPE in transformations steps
do
  echo "Deleting ${TYPE}"
  RES=$(curl -w '\n' "${URL}/harvester/records/${TYPE}")
  IDS=$(echo $RES | grep -o '<id>[0-9]*' | grep -o '[0-9]*')
  for ID in $IDS
  do
    echo " $ID"
    curl -w '\n' -X DELETE "$URL/harvester/records/${TYPE}/$ID"
  done
done


