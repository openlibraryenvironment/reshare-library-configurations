#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`

SRCID=$1;
if [ -z $SRCID ]
  then
    echo "Usage: $0 <sourceId>"
    exit
fi

URL="${OKAPI}/reservoir/clusters/touch?query=matchkeyId==goldrush%20AND%20sourceId==${SRCID}"
echo "POST $URL"

curl -w '\n' --http1.1 $URL -H 'content-type: application/json' -H "x-okapi-token: ${TOKEN}" -d {}

