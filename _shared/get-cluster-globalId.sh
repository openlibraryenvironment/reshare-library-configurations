#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

ID=$1

if [ -z $ID ]
then
  echo "Usage: ${0} <globalId> [ <matcher> ]"
  exit
fi

M=goldrush
if [ $2 ]
then
  M=$2
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=${M}&query=globalId==${1}"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" # | jq .items[0]
