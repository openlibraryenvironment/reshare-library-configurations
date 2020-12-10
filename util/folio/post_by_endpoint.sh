#!/bin/bash

EP=$1;
UFILE=$2;
if [ -z $UFILE ]
  then
    echo 'Usage: . post_by_endpoint <endpoint> <jsonl_file>'
    exit
fi
if [ ! -f $UFILE ]
  then
    echo 'File not found'
    exit
fi

echo "Choose an endpoint..."
select EP in service-points identifier-types location-units/institutions location-units/campuses location-units/libraries locations
do
  break;
done

LN=1;
while IFS= read -r line
  do
    echo "Loading # ${LN}"
    curl -w '\n' --http1.1 "$protocol://$host/${EP}" -H 'content-type: application/json' -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token" -d "${line}"
    LN=$(expr $LN + 1)
done < $UFILE
