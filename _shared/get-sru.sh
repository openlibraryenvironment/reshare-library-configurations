#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

RECID=$1

if [ -z $RECID ]
then
  echo "Usage: ${0} <clusterId>"
  exit
fi


URL="${OKAPI}/reservoir/sru?operation=searchRetrieve&query=rec.id=${RECID}"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}"
