#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

SRCID=$1

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId>"
  exit
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=goldrush&query=sourceId==${SRCID}&limit=100"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq .
