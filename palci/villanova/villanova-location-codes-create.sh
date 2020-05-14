banner=" This will create a locations structure for Villanova"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "170f6942-fec5-42af-9b5d-6bbba3e0a44a",
        "name": "ReShare_VLA",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "170f6942-fec5-42af-9b5d-6bbba3e0a44a",
        "name": "Villanova",
        "code": "VLA",
        "discoveryDisplayName": "Unspecified Villanova service point",
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
        "id": "943aa176-7612-4e34-a1b9-ea318f92facd",
        "name": "Villanova",
        "code": "VLA"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "c7194757-f541-4dbe-ac90-79434d34562f",
        "name": "Villanova",
        "code": "VLA",
        "institutionId": "943aa176-7612-4e34-a1b9-ea318f92facd"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "83a954a3-eca6-4056-9c0c-d8cca429e428",
        "name": "Villanova",
        "code": "VLA",
        "campusId": "c7194757-f541-4dbe-ac90-79434d34562f"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "42e5ba2f-d935-44f9-87e5-d6e9f01d2fb1",
        "name": "Villanova",
        "code": "VLA/VLA/VLA/VLA",
        "isActive": true,
        "institutionId": "943aa176-7612-4e34-a1b9-ea318f92facd",
        "campusId": "c7194757-f541-4dbe-ac90-79434d34562f",
        "libraryId": "83a954a3-eca6-4056-9c0c-d8cca429e428",
        "primaryServicePoint": "170f6942-fec5-42af-9b5d-6bbba3e0a44a",
        "servicePointIds": [ "170f6942-fec5-42af-9b5d-6bbba3e0a44a" ]
    }' \
    $protocol://$host/locations
