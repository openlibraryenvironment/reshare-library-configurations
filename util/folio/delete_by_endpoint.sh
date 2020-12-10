#!/bin/bash

UFILE=$1;
if [ -z $UFILE ]
  then
    echo 'Usage: . delete_by_endpoint <jsonl_file>'
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
    ID=`echo $line | sed -E 's/.*"id":"([^"]+).*/\1/'`
    echo "Deleting $ID"
    curl -w '\n' --http1.1 -X DELETE "$protocol://$host/${EP}/$ID" -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token"
done < $UFILE
