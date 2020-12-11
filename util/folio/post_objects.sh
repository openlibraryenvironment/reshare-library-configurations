#!/bin/bash

UFILE=$1;
if [ -z $UFILE ]
  then
    echo "Usage: . ${BASH_SOURCE[0]} <jsonl_file>"
    return
fi
if [ ! -f $UFILE ]
  then
    echo 'File not found'
    return
fi
if [ -z $token ]
  then
    echo "Can't find okapi token-- Make sure to run a login script."
    return 
fi
OPTS=`cat endpoints`;

case $UFILE in
  *identifier-types.jsonl) EP=identifier-types;; 
  *service-points.jsonl) EP=service-points;;
  *institutions.jsonl) EP=location-units/institutions;;
  *campuses.jsonl) EP=location-units/campuses;;
  *libraries.jsonl) EP=location-units/libraries;;
  *locations.jsonl) EP=locations;;
  *)
    echo "Choose an endpoint..."
    select EP in $OPTS 
    do
      break
    done
  ;;
esac

LN=1;
while IFS= read -r line
  do
    echo "Loading # ${LN}"
    curl -w '\n' --http1.1 "$protocol://$host/${EP}" -H 'content-type: application/json' -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token" -d "${line}"
    LN=$(expr $LN + 1)
done < $UFILE
