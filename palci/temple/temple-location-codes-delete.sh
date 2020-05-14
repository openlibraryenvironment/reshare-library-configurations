tenant=$1
username=$2
password=$3
protocol=$4
host=$5

token=$(./get-token.sh $tenant $username $password $protocol $host)

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/service-points/efb9addf-caf4-4052-bb17-135cb4aa0594
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/identifier-types/17bb9b44-0063-44cc-8f1a-ccbb6188060b
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/87038e41-0990-49ea-abd9-1ad00a786e45
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/8b0fa6c3-d77e-4321-936c-07f623b386fa
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/07d43ef5-b53c-4b5a-bafa-e86e28f8babc
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/ba8851b5-f6fa-4689-8cd6-ea467b67a34a
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/3773e93f-f892-4e43-8b10-6ad8e7630747
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/bb973f8b-096d-4a30-9434-5e094facdc54
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/campuses/e4cb3320-adba-4412-98fe-1f8576ec50db
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/institutions/05770b43-8f13-41e3-9ffd-8c13ae570d18


