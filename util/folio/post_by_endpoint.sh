#!/bin/bash

EP=$2;
UFILE=$3;
if [ -z $UFILE ]
  then
    echo 'Usage: ./post_by_endpoint <login script> <endpoint> <jsonl_file>'
    exit
fi
if [ ! -f $UFILE ]
  then
    echo 'File not found'
    exit
fi

if [ $1 != x ]
then
  . $1
fi

LN=1;
while IFS= read -r line
  do
    echo "Loading # ${LN}"
    curl -w '\n' --http1.1 "$protocol://$host/${EP}" -H 'content-type: application/json' -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token" -d "${line}"
    LN=$(expr $LN + 1)
done < $UFILE
