#!/bin/bash

read -esp "Harvester password: " PW
echo

for HFILE in ${BASH_ARGV[@]};
do
  JID=$(echo $HFILE | grep -o '[0-9][0-9]*')
  echo "PUTTING ${JID}"
  curl -D - -X PUT "https://harvester_admin:${PW}@cny-harvester.reshare.indexdata.com/harvester/records/steps/${JID}" -d @$HFILE -H 'content-type: application/xml'
done
