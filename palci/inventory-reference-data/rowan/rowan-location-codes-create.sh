banner=" This will create a locations hierarchy for Rowan"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "8a29cc20-171b-4f6a-a68f-8bc87842c1cb",
        "name": "ReShare_US-NJGBS",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "63020be6-35f4-4d5e-91e4-7f5d3978a17b",
        "name": "Rowan",
        "code": "US-NJGBS",
        "discoveryDisplayName": "Rowan",
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
        "id": "3f117a23-fa69-43cd-b509-7ec79177e798",
        "name": "Rowan",
        "code": "US-NJGBS"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7",
        "name": "Rowan",
        "code": "US-NJGBS",
        "institutionId": "3f117a23-fa69-43cd-b509-7ec79177e798"
     }' \
  $protocol://$host/location-units/campuses


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "name": "Rowan",
        "code": "US-NJGBS",
        "campusId": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7"
     }' \
  $protocol://$host/location-units/libraries


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "name": "Rowan - Campbell Library",
        "code": "US-NJGBS/US-NJGBS/US-NJGBS/Main",
        "isActive": true,
        "institutionId": "3f117a23-fa69-43cd-b509-7ec79177e798",
        "campusId": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7",
        "libraryId": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "primaryServicePoint": "63020be6-35f4-4d5e-91e4-7f5d3978a17b",
        "servicePointIds": [ "63020be6-35f4-4d5e-91e4-7f5d3978a17b" ]
    }' \
    $protocol://$host/locations

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "02f826fd-15dc-4e8c-8605-1735814c5fa8",
        "name": "Rowan - Children''s 2nd Floor",
        "code": "US-NJGBS/US-NJGBS/US-NJGBS/Child3rdFl",
        "isActive": true,
        "institutionId": "3f117a23-fa69-43cd-b509-7ec79177e798",
        "campusId": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7",
        "libraryId": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "primaryServicePoint": "63020be6-35f4-4d5e-91e4-7f5d3978a17b",
        "servicePointIds": [ "63020be6-35f4-4d5e-91e4-7f5d3978a17b" ]
    }' \
    $protocol://$host/locations

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "9df2f2a1-00cd-4ebd-9ecb-6e4340a58e4a",
        "name": "Rowan - Performing Arts Coll.",
        "code": "US-NJGBS/US-NJGBS/US-NJGBS/Wilson",
        "isActive": true,
        "institutionId": "3f117a23-fa69-43cd-b509-7ec79177e798",
        "campusId": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7",
        "libraryId": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "primaryServicePoint": "63020be6-35f4-4d5e-91e4-7f5d3978a17b",
        "servicePointIds": [ "63020be6-35f4-4d5e-91e4-7f5d3978a17b" ]
    }' \
    $protocol://$host/locations

# Catch-all
curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "ed1f2e45-0acb-4a24-b584-a397fcd3d9b0",
        "name": "Rowan - Unmapped location",
        "code": "US-NJGBS/US-NJGBS/US-NJGBS/Rowan",
        "isActive": true,
        "institutionId": "3f117a23-fa69-43cd-b509-7ec79177e798",
        "campusId": "42fa0211-c1fe-4fd4-8ed9-b36b077f26d7",
        "libraryId": "161ac163-7ccd-4b56-a9e0-7eec3c30c77f",
        "primaryServicePoint": "63020be6-35f4-4d5e-91e4-7f5d3978a17b",
        "servicePointIds": [ "63020be6-35f4-4d5e-91e4-7f5d3978a17b" ]
    }' \
    $protocol://$host/locations
