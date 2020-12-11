#!/bin/bash

if [ -z $token ]
  then
    echo "Can't find okapi token-- Make sure to run a login script."
    return 
fi

echo "Choose an endpoint..."
select EP in identifier-types service-points location-units/institutions location-units/campuses location-units/libraries locations
do
  break
done

curl -w '\n' --http1.1 "$protocol://$host/${EP}" -H "x-okapi-tenant: $tenant" -H "x-okapi-token: $token"
