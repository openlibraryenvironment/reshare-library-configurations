banner=" This will delete a Millersville location structure of the simple kind"

. $1

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/service-points/76d17981-f8f7-4dd5-94b7-4e55d84dde8f
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/identifier-types/04d081a1-5c52-4b84-8962-949fc5f6773c
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/locations/004c14d3-fb87-40fc-b4db-9e91738b4f1b
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/libraries/90c91643-303c-4379-9fbb-7609a1847096
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/campuses/93678933-8cf2-4c98-a665-045ed466e26c
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/location-units/institutions/b4578dbc-4dd9-4ac1-9c01-8a13f65aa95e


