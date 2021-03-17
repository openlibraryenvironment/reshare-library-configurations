banner="This will delete the sample institutions, libraries and locations that come pre-loaded with a new FOLIO inventory install"

if [ -z $1 ]; then
  echo
  echo
  echo " Please provide name of file containing the settings for the FOLIO install to run this script against. Example:  ./delete-folio-sample-locations.sh diku@localhost:9130.sh"
  echo
  exit 1
fi

. $1

echo

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/53cf956f-c1df-410b-8bea-27f712cca7c0
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/fcd64ce1-6995-48f0-840e-89ffa2288371
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/758258bc-ecc1-41b8-abca-f7b610822ffd
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/b241764c-1466-4e1d-a028-1a3684a5da87
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/f34d27c6-a8eb-461b-acd6-5dea81771e70
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/184aae84-a5bf-4c6a-85ba-4a7c73026cd5
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/5d78803e-ca04-4b4a-aeae-2c63b924518b
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/c2549bb4-19c7-4fcc-8b52-39e612fb7dbe
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/campuses/62cf76b7-cca5-4d33-9217-edf42ce1a848
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/campuses/470ff1dd-937a-4195-bf9e-06bcfcd135df
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/institutions/40ee00ca-a518-4b49-be01-0638d0a4ac57

echo
echo Done `date`
