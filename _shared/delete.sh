#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`

EP=$1
UUID=$2

if [ -z $UUID ] 
  then
    echo "Usage: ${0} <okap_endpoint> <id>"
    exit
fi

curl --http1.1 -w '\n' -X DELETE "${OKAPI}/${EP}/${UUID}" -H "x-okapi-token: ${TOKEN}"
