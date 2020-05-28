banner=" This will create a high-level locations hierarchy for Seton Hall (one location)"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "b4d96d6d-92f4-414a-a058-e91ef8e8ea07",
        "name": "ReShare_STH",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "1369a65f-ac15-4e20-b241-4af827732552",
        "name": "Seton Hall",
        "code": "STH",
        "discoveryDisplayName": "Seton Hall",
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
        "id": "01355129-8c25-4f81-aa72-d424e00cbe67",
        "name": "Seton Hall",
        "code": "STH"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
        "name": "Seton Hall",
        "code": "STH",
        "institutionId": "01355129-8c25-4f81-aa72-d424e00cbe67"
     }' \
  $protocol://$host/location-units/campuses


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "97478710-14f9-42f9-b30c-0a94f028de05",
        "name": "Seton Hall",
        "code": "STHM",
        "campusId": "b1b284b5-9e3e-4cdf-a83e-478271f404ee"
     }' \
  $protocol://$host/location-units/libraries


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "f29e2419-2373-48de-85a8-78b87ba865bc",
        "name": "Seton Hall - Walsh Library",
        "code": "STH/STH/STHM/STHM",
        "isActive": true,
        "institutionId": "01355129-8c25-4f81-aa72-d424e00cbe67",
        "campusId": "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
        "libraryId": "97478710-14f9-42f9-b30c-0a94f028de05",
        "primaryServicePoint": "1369a65f-ac15-4e20-b241-4af827732552",
        "servicePointIds": [ "1369a65f-ac15-4e20-b241-4af827732552" ]
    }' \
    $protocol://$host/locations
