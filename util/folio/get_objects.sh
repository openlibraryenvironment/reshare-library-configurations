#!/bin/bash

if [ -z $token ]
  then
    echo "Can't find okapi token-- Make sure to run a login script."
    return || exit 
fi
OPTS=`cat endpoints`;

# echo "Choose an endpoint..."
select EP in $OPTS
do
  break
done

curl -w '\n' --http1.1 "$protocol://$host/${EP}?limit=100" -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token"
