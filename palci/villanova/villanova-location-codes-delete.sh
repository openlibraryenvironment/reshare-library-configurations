tenant=$1
username=$2
password=$3
protocol=$4
host=$5

token=$(./get-token.sh $tenant $username $password $protocol $host)

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/service-points/170f6942-fec5-42af-9b5d-6bbba3e0a44a
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/identifier-types/170f6942-fec5-42af-9b5d-6bbba3e0a44a
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/42e5ba2f-d935-44f9-87e5-d6e9f01d2fb1
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/83a954a3-eca6-4056-9c0c-d8cca429e428
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/campuses/c7194757-f541-4dbe-ac90-79434d34562f
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/institutions/943aa176-7612-4e34-a1b9-ea318f92facd


