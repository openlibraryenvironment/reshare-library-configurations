tenant=$1
username=$2
password=$3
protocol=$4
host=$5


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "17bb9b44-0063-44cc-8f1a-ccbb6188060b",
        "name": "ReShare_TEU",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "efb9addf-caf4-4052-bb17-135cb4aa0594",
        "name": "Temple",
        "code": "TEU",
        "discoveryDisplayName": "Temple",
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
        "id": "05770b43-8f13-41e3-9ffd-8c13ae570d18",
        "name": "Temple",
        "code": "TEU"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "e4cb3320-adba-4412-98fe-1f8576ec50db",
        "name": "Temple",
        "code": "TEU",
        "institutionId": "05770b43-8f13-41e3-9ffd-8c13ae570d18"
     }' \
  $protocol://$host/location-units/campuses


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "bb973f8b-096d-4a30-9434-5e094facdc54",
        "name": "Temple",
        "code": "TEU",
        "campusId": "e4cb3320-adba-4412-98fe-1f8576ec50db"
     }' \
  $protocol://$host/location-units/libraries


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "87038e41-0990-49ea-abd9-1ad00a786e45",
        "name": "Temple",
        "code": "TEU/TEU/TEU/TEU",
        "isActive": true,
        "institutionId": "05770b43-8f13-41e3-9ffd-8c13ae570d18",
        "campusId": "e4cb3320-adba-4412-98fe-1f8576ec50db",
        "libraryId": "bb973f8b-096d-4a30-9434-5e094facdc54",
        "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
        "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
    }' \
    $protocol://$host/locations
