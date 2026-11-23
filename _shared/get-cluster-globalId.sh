#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

ID=$1

if [ -z $ID ]
then
  echo "Usage: ${0} <globalId> [ <matchkey> ]"
  exit
fi

M=goldrush
if [ $2 ]
then
  M=$2
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=${M}&query=globalId==${1}"

RES=$(curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}")
echo $RES | jq .items[0] 2>/dev/null || echo "ERROR $RES ($URL)"
