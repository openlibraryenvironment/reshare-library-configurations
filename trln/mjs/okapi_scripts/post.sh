#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`

EP=$1;
UFILE=$2;
if [ -z $UFILE ]
  then
    echo "Usage: $0 <endpoint> <jsonl_file>"
    exit
fi
if [ ! -f $UFILE ]
  then
    echo 'File not found'
    exit
fi

LN=1;
while IFS= read -r line
  do
    echo "Loading # ${LN}"
    echo $line > .okapi/payload
    curl -w '\n' --http1.1 "${OKAPI}/${EP}" -H 'content-type: application/json' -H "x-okapi-token: ${TOKEN}" -d @.okapi/payload
    LN=$(expr $LN + 1)
done < $UFILE

