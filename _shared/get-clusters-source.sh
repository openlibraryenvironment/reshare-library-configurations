#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

SRCID=$1
PARA=$2

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId> [<additional_http_query_string>]"
  exit
fi

if [ $PARA ]
then
  PARA="&${PARA}"
fi


URL="${OKAPI}/reservoir/clusters?matchkeyid=goldrush&query=sourceId==${SRCID}${PARA}"
echo "GET ${URL}" 1>&2

curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq .
