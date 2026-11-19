#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

SRCID=$1
EL=$3;
M=goldrush

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId> [<element>]"
  exit
fi

if [ -z $EL ]
then
  EL=0
fi

if [ $2 ]
then
  M=$2
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=$2&query=sourceId==${SRCID}"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq ".items[$EL]"
