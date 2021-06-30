#!/bin/bash

# This script will download all PALCI harvestables with enabled set to true

read -esp "Harvester password: " PW
echo

BRIEF=$(curl "https://harvester_admin:${PW}@palci-harvester.reshare.indexdata.com/harvester/records/harvestables?query=enabled=true")

IDS=$(echo $BRIEF | grep -o '<id>[0-9]*')

for id in $IDS
do
  echo "------------"
  JID=$(echo $id | sed -E 's/<id>//')
  echo "Getting ${JID}"
  curl -D - "https://harvester_admin:${PW}@palci-harvester.reshare.indexdata.com/harvester/records/harvestables/${JID}" -o HARVESTABLE-$JID.xml
done
