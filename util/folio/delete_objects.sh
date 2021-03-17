#!/bin/bash

UFILE=$1;
if [ -z $UFILE ]
  then
    echo "Usage: . ${BASH_SOURCE[0]} <jsonl_file>"
    return || exit
fi
if [ ! -f $UFILE ]
  then
    echo 'File not found'
    return || exit
fi
if [ -z $token ]
  then
    echo "Can't find okapi token-- Make sure to run a login script."
    return || exit
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

while IFS= read -r line
  do
    ID=`echo $line | sed -E 's/.*"id":"([^"]+).*/\1/'`
    FURL="$protocol://$host/$EP/$ID"
    echo "DELETE $FURL"
    curl -w '\n' --http1.1 -X DELETE $FURL -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token"
done < $UFILE
