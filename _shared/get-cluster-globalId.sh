#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

ID=$1

if [ -z $ID ]
then
  echo "Usage: ${0} <globalId>"
  exit
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=goldrush&query=globalId==${1}"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq .items[0]
