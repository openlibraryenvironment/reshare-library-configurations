#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

ID=$1

if [ -z $ID ]
then
  echo "Usage: ${0} <clusterId>"
  exit
fi

URL="${OKAPI}/reservoir/clusters/${ID}"
if [ $DEBUG ]
then
	echo $URL
fi

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq .
