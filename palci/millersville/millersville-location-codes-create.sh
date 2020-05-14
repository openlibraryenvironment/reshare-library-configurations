banner=" This script will create a simple locations structure with just one location for all of Millersville"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "04d081a1-5c52-4b84-8962-949fc5f6773c",
        "name": "ReShare_MVS",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "76d17981-f8f7-4dd5-94b7-4e55d84dde8f",
        "name": "Millersville",
        "code": "MVS",
        "discoveryDisplayName": "Millersville",
        "pickupLocation": true,
        "holdShelfExpiryPeriod": {
          "duration": 3,
          "intervalId": "Weeks"
        }
      }' \
  $protocol://$host/service-points

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "b4578dbc-4dd9-4ac1-9c01-8a13f65aa95e",
        "name": "Millersville",
        "code": "MVS"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "93678933-8cf2-4c98-a665-045ed466e26c",
        "name": "Millersville",
        "code": "MVS",
        "institutionId": "b4578dbc-4dd9-4ac1-9c01-8a13f65aa95e"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "90c91643-303c-4379-9fbb-7609a1847096",
        "name": "Millersville",
        "code": "MVS",
        "campusId": "93678933-8cf2-4c98-a665-045ed466e26c"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "004c14d3-fb87-40fc-b4db-9e91738b4f1b",
        "name": "Millersville",
        "code": "MVS/MVS/MVS/MVS",
        "isActive": true,
        "institutionId": "b4578dbc-4dd9-4ac1-9c01-8a13f65aa95e",
        "campusId": "93678933-8cf2-4c98-a665-045ed466e26c",
        "libraryId": "90c91643-303c-4379-9fbb-7609a1847096",
        "primaryServicePoint": "76d17981-f8f7-4dd5-94b7-4e55d84dde8f",
        "servicePointIds": [ "76d17981-f8f7-4dd5-94b7-4e55d84dde8f" ]
    }' \
    $protocol://$host/locations
