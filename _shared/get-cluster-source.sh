#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

SRCID=$1
EL=$2;

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId> [<element>]"
  exit
fi

if [ -z $EL ]
then
  EL=0
fi


URL="${OKAPI}/reservoir/clusters?matchkeyid=goldrush&query=sourceId==${SRCID}"

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq ".items[$EL]";
