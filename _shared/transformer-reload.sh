#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`

EP=reservoir/config/modules/marc-transformer/reload
if [ -z $EP ]
  then
    echo 'Usage: ./put.sh <endpoint>'
    exit
fi

curl -w '\n' -X PUT --http1.1 "${OKAPI}/${EP}" -H 'content-type: application/json' -H "x-okapi-token: ${TOKEN}" -d ""

