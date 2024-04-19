#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`

if [ -z $1 ]; then
    echo "Usage: $0 [ -f read_sourceIds_from_file ] <sourceId>"
    exit
fi

if [ $1 == '-f' ]; then
  SRCIDS=`sort -u $2`
else
  SRCIDS=$1
fi

for SRCID in $SRCIDS; do
  URL="${OKAPI}/reservoir/clusters/touch?query=matchkeyId==goldrush%20AND%20sourceId==${SRCID}"
  echo "POST $URL"
  curl -w '\n' --http1.1 $URL -H 'content-type: application/json' -H "x-okapi-token: ${TOKEN}" -d {}
done

