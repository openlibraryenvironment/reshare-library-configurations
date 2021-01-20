banner=" This will create a granular locations hierarchy for New School"

. $1


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "3f6508b0-764b-4c99-b7f0-db542ac59b6c",
        "name": "ReShare_US-NNNS",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
  "id": "e7a29f28-24bb-4fab-9c10-0193f94669fd",
  "name": "New School Local",
  "source": "RESHARE"
}' \
$protocol://$host/call-number-types



curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
        "name": "New School",
        "code": "US-NNNS",
        "discoveryDisplayName": "New School",
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
        "id": "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
        "name": "New School",
        "code": "US-NNNS"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "461dd110-282f-4bbf-9979-738024056abb",
        "name": "New School",
        "code": "US-NNNS",
        "institutionId": "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd"
     }' \
  $protocol://$host/location-units/campuses

# Fallback location
curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "eaa01312-8175-44f2-9bf9-ff75585010a0",
        "name": "New School",
        "code": "US-NNNS",
        "campusId": "461dd110-282f-4bbf-9979-738024056abb"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "a2be9b49-a393-4b15-a236-47bdf97928c3",
        "name": "New School - Unmapped location",
        "code": "US-NNNS/US-NNNS/US-NNNS/US-NNNS",
        "isActive": true,
        "institutionId": "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
        "campusId": "461dd110-282f-4bbf-9979-738024056abb",
        "libraryId": "eaa01312-8175-44f2-9bf9-ff75585010a0",
        "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
        "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
    }' \
    $protocol://$host/locations

# Libraries and locations generated from New School spread sheet data
curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "name" : "List Center Library",
 "code" : "TNSFO",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "31ac73c8-e26d-4a20-860b-1489b51ada90",
 "name" : "New School - List Center Library - Archives (ARCH )",
 "code" : "US-NNNS/US-NNNS/TNSFO/ARCH ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "404237f4-e470-479f-88f2-2ccc026142b0",
 "name" : "New School - List Center Library - Reference (ATLAS)",
 "code" : "US-NNNS/US-NNNS/TNSFO/ATLAS",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7bb92d25-eb12-4f3d-870a-fae478d9a2dd",
 "name" : "New School - List Center Library - Audio Visual (AV)",
 "code" : "US-NNNS/US-NNNS/TNSFO/AV",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c7ced7f8-b35f-4491-b53b-1ed0a1041bda",
 "name" : "New School - List Center Library - Catalog Maintenance (CATM )",
 "code" : "US-NNNS/US-NNNS/TNSFO/CATM ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "5c255581-18cc-4100-9b30-fc469b19ddd3",
 "name" : "New School - List Center Library - Closed Stack - Periodicals (CLOSP)",
 "code" : "US-NNNS/US-NNNS/TNSFO/CLOSP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "74c41ff2-44ef-4288-a1e9-e6ee7239524a",
 "name" : "New School - List Center Library - Closed Stack (CLOSS)",
 "code" : "US-NNNS/US-NNNS/TNSFO/CLOSS",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "54757414-6ead-4c8d-b2ba-c898c32fc7d5",
 "name" : "New School - List Center Library - Reference (INDEX)",
 "code" : "US-NNNS/US-NNNS/TNSFO/INDEX",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4a097625-e21d-4e32-bee7-a93526cfde04",
 "name" : "New School - List Center Library - Main Collection (MAIN)",
 "code" : "US-NNNS/US-NNNS/TNSFO/MAIN",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f7fe23fd-d815-4f2a-bb57-89ae628f198c",
 "name" : "New School - List Center Library - Microform (MICRO)",
 "code" : "US-NNNS/US-NNNS/TNSFO/MICRO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d212ef65-f8d7-41bd-bcd8-49a66e178b08",
 "name" : "New School - List Center Library - Migration Center (MIG)",
 "code" : "US-NNNS/US-NNNS/TNSFO/MIG",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f74d72c9-a6dd-4219-b396-7af1349e3abe",
 "name" : "New School - List Center Library - E-ZBorrow (NCIP)",
 "code" : "US-NNNS/US-NNNS/TNSFO/NCIP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "85aeca74-d846-40ac-bb4e-d50f464752b0",
 "name" : "New School - List Center Library - Newschool Reserve (NRES)",
 "code" : "US-NNNS/US-NNNS/TNSFO/NRES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "666ed659-5e62-49d3-a82c-024ae9240b79",
 "name" : "New School - List Center Library - Oversize Collection (OVERZ)",
 "code" : "US-NNNS/US-NNNS/TNSFO/OVERZ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "9542dc05-91bd-482d-b275-62df720cb39a",
 "name" : "New School - List Center Library - Periodicals (PERIO)",
 "code" : "US-NNNS/US-NNNS/TNSFO/PERIO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "abe6eb4d-4c69-446c-aeea-531ed9c43bf1",
 "name" : "New School - List Center Library - Reference (REF)",
 "code" : "US-NNNS/US-NNNS/TNSFO/REF",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "2dc36fce-6d6d-42a2-bc7e-62bfceb22d70",
 "name" : "New School - List Center Library - Reference - Desk (REFD)",
 "code" : "US-NNNS/US-NNNS/TNSFO/REFD",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "8b7396c2-2799-4b65-9dfc-0eb8abc0c88b",
 "name" : "New School - List Center Library - Reference - Index (REFI)",
 "code" : "US-NNNS/US-NNNS/TNSFO/REFI",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6a6fe291-cd5a-4674-9930-9aa059134b70",
 "name" : "New School - List Center Library - SpecCol (SPCL)",
 "code" : "US-NNNS/US-NNNS/TNSFO/SPCL",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "266266d5-5dfe-4352-a8c5-d1ca9798b85c",
 "name" : "New School - List Center Library - SpecCol Periodicals (SPCLP)",
 "code" : "US-NNNS/US-NNNS/TNSFO/SPCLP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "097452cd-6240-45b3-918a-280cd839ea9d",
 "name" : "New School - List Center Library - Storage (STOR)",
 "code" : "US-NNNS/US-NNNS/TNSFO/STOR",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4260d20c-2a85-4d8c-8f1f-d0796f1e22e6",
 "name" : "New School - List Center Library - Tech Center (TECH)",
 "code" : "US-NNNS/US-NNNS/TNSFO/TECH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "43466231-a15d-4e98-9a04-e8b7be30272e",
 "name" : "New School - List Center Library - TESOL (TESOL)",
 "code" : "US-NNNS/US-NNNS/TNSFO/TESOL",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b350998b-010a-41bf-a98c-24b5787db09c",
 "name" : "New School - List Center Library - Thesis (THES)",
 "code" : "US-NNNS/US-NNNS/TNSFO/THES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "d2ea2c7e-8199-4e34-a272-9c6406ad5b9c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "09e04b57-717e-4565-a1d1-d5112455e6da",
 "name" : "University Center Library",
 "code" : "TNSGI",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "691b823a-4149-42c8-8794-e0d103a7413c",
 "name" : "New School - University Center Library - Archives (ARCH)",
 "code" : "US-NNNS/US-NNNS/TNSGI/ARCH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "09577ba8-7da9-4d19-aa09-fb4e842bc867",
 "name" : "New School - University Center Library - Audio Visual (AV)",
 "code" : "US-NNNS/US-NNNS/TNSGI/AV",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fbaf2b18-b49c-40bc-bc87-00bb9dcafd07",
 "name" : "New School - University Center Library - Main Collection (MAIN)",
 "code" : "US-NNNS/US-NNNS/TNSGI/MAIN",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7a1ac4a3-a879-4e49-9b5a-859adad031f6",
 "name" : "New School - University Center Library - E-ZBorrow (NCIP)",
 "code" : "US-NNNS/US-NNNS/TNSGI/NCIP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4af8938b-8869-4ab7-9298-ae4d9177aa08",
 "name" : "New School - University Center Library - Reserve Collection (NRES)",
 "code" : "US-NNNS/US-NNNS/TNSGI/NRES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6168c6fc-cc0f-42fb-a4ee-7b5cbcce2f0c",
 "name" : "New School - University Center Library - Oversize Collection (OVERZ)",
 "code" : "US-NNNS/US-NNNS/TNSGI/OVERZ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3f28360d-eb70-4d22-8bee-1d040c6e99cd",
 "name" : "New School - University Center Library - Periodicals (PERIO)",
 "code" : "US-NNNS/US-NNNS/TNSGI/PERIO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "ea9c4c26-14d3-4ab6-93b9-c76958e99e26",
 "name" : "New School - University Center Library - Reference (REF)",
 "code" : "US-NNNS/US-NNNS/TNSGI/REF",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fbda43f1-97d1-4411-a8f2-84b8fbf0ae44",
 "name" : "New School - University Center Library - Reference (!REFA)",
 "code" : "US-NNNS/US-NNNS/TNSGI/!REFA",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0617aedd-4187-419e-b198-8ebbf459b0c5",
 "name" : "New School - University Center Library - SpecCol (SPCL)",
 "code" : "US-NNNS/US-NNNS/TNSGI/SPCL",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "5ef1e64e-f675-42ff-a114-a4a6892f724e",
 "name" : "New School - University Center Library - SpecCol Periodicals (SPCLP)",
 "code" : "US-NNNS/US-NNNS/TNSGI/SPCLP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "550e0fee-373f-4c3a-99ef-fdf29e6156c8",
 "name" : "New School - University Center Library - Tech Center (TECH)",
 "code" : "US-NNNS/US-NNNS/TNSGI/TECH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "09e04b57-717e-4565-a1d1-d5112455e6da",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "name" : "Archives and Special Collections",
 "code" : "TNSKE",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "85afbbdd-1354-4f72-a8a3-638c84f108fe",
 "name" : "New School - Archives and Special Collections - Archives (ARCH)",
 "code" : "US-NNNS/US-NNNS/TNSKE/ARCH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7f4aca30-8445-42d7-9c55-1c783f55bcea",
 "name" : "New School - Archives and Special Collections - Artist Book (SPCLA)",
 "code" : "US-NNNS/US-NNNS/TNSKE/SPCLA",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3ae0c2ae-3f90-4786-9845-f714d774ef39",
 "name" : "New School - Archives and Special Collections - Special Collections - Monographs (SPCL)",
 "code" : "US-NNNS/US-NNNS/TNSKE/SPCL",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3266b344-dd1f-42b8-97c6-8173b2cbff7e",
 "name" : "New School - Archives and Special Collections - SpecCol Periodicals (SPCLP)",
 "code" : "US-NNNS/US-NNNS/TNSKE/SPCLP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "54c06900-0c09-4100-b798-5758c88bcf23",
 "name" : "New School - Archives and Special Collections - Audio Visual (AV)",
 "code" : "US-NNNS/US-NNNS/TNSKE/AV",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f0c72e64-400b-49ba-9057-afca7a8fc0e5",
 "name" : "New School - Archives and Special Collections - Microfilm (MICRO)",
 "code" : "US-NNNS/US-NNNS/TNSKE/MICRO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "82d83505-5b09-4899-a739-840f87180b70",
 "name" : "New School - Archives and Special Collections - Music (MUSIC)",
 "code" : "US-NNNS/US-NNNS/TNSKE/MUSIC",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "ae0c8eaa-9466-4357-b45d-c7bc14cb3b32",
 "name" : "New School - Archives and Special Collections - Thesis (THES)",
 "code" : "US-NNNS/US-NNNS/TNSKE/THES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "10b3575f-fc9c-4220-8777-388e9e4f226c",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "80402036-8bb7-47cc-8095-74c57af828d3",
 "name" : "Offsite",
 "code" : "TNSOS",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6746f2c2-1741-4cbc-ac87-38c7bf220ec3",
 "name" : "New School - Offsite - Audio  (AUD09)",
 "code" : "US-NNNS/US-NNNS/TNSOS/AUD09",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0bb904e4-2135-439f-b17d-4ab8a6b49d7d",
 "name" : "New School - Offsite - Audio - Non-Circulating (AUD10)",
 "code" : "US-NNNS/US-NNNS/TNSOS/AUD10",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "afe0e592-05fc-498b-8c0d-83eda247e647",
 "name" : "New School - Offsite - MultiMedia (ERES)",
 "code" : "US-NNNS/US-NNNS/TNSOS/ERES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4249ce25-2ee9-4afe-816e-34a58ba16fb1",
 "name" : "New School - Offsite - MultiMedia Non-Circulating (ERES4)",
 "code" : "US-NNNS/US-NNNS/TNSOS/ERES4",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "254a09e3-59e0-4e2c-90ed-954b4a57b69f",
 "name" : "New School - Offsite - Main Collection (MAIN)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MAIN",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "dabc04a9-9ec9-4768-95b0-3fab46f6df19",
 "name" : "New School - Offsite - Main Collection - Non - Circulating (MAIN4)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MAIN4",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "e8870965-e0aa-4700-95ae-7a8e96d0be19",
 "name" : "New School - Offsite - Microform (MICRO)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MICRO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fce822c9-1241-4bd0-9d13-c5dffa3f2913",
 "name" : "New School - Offsite - Microform Books (MICRB)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MICRB",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "83642d47-9c82-43bd-a960-2597392700c6",
 "name" : "New School - Offsite - Microform - Non-Circulating (MICR4)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MICR4",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f54ca2a4-14f7-4a77-b205-d70fb7e7edb7",
 "name" : "New School - Offsite - Miniature Scores (MINI)",
 "code" : "US-NNNS/US-NNNS/TNSOS/MINI",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "bcacb3f7-6ede-400d-8a76-44c3046853c9",
 "name" : "New School - Offsite - Oversize Books (OVERZ)",
 "code" : "US-NNNS/US-NNNS/TNSOS/OVERZ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f9d68cc8-db4a-4d21-84cf-9b9f8f39dea9",
 "name" : "New School - Offsite - Oversize Books - Non-Circulating (OVER4)",
 "code" : "US-NNNS/US-NNNS/TNSOS/OVER4",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "dfffd3f8-71d0-4fc1-bd42-f83f52b5ef77",
 "name" : "New School - Offsite - Oversize Score Collection (OVERM)",
 "code" : "US-NNNS/US-NNNS/TNSOS/OVERM",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "1c172fb2-66f4-4ab5-b9f9-9ccce914aa42",
 "name" : "New School - Offsite - Periodicals (PERI1)",
 "code" : "US-NNNS/US-NNNS/TNSOS/PERI1",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "17e5c6ab-f795-4dad-aa8d-383a765611fc",
 "name" : "New School - Offsite - Periodicals (PERIO)",
 "code" : "US-NNNS/US-NNNS/TNSOS/PERIO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fae6abd1-3014-4777-b7c8-d61b6cf78dac",
 "name" : "New School - Offsite - Reference (REF)",
 "code" : "US-NNNS/US-NNNS/TNSOS/REF",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a5eefcc9-bc44-44f6-bbbe-dc8ed1788080",
 "name" : "New School - Offsite - Full Scores (SCORE)",
 "code" : "US-NNNS/US-NNNS/TNSOS/SCORE",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "bd49bf53-38d1-460c-85eb-e7fb150d9ef8",
 "name" : "New School - Offsite - Full Scores - Non-Circulating (SCOR4)",
 "code" : "US-NNNS/US-NNNS/TNSOS/SCOR4",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "eddd2e23-2df6-4b91-8322-022ae906a748",
 "name" : "New School - Offsite - Tech Center (TECH)",
 "code" : "US-NNNS/US-NNNS/TNSOS/TECH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d34d0845-d582-46ae-a8bd-a83ab1809b81",
 "name" : "New School - Offsite - Thesis (THES)",
 "code" : "US-NNNS/US-NNNS/TNSOS/THES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c4ec2343-1fbe-401a-8210-6788300f0688",
 "name" : "New School - Offsite - Thesis - Microfilm (THES5)",
 "code" : "US-NNNS/US-NNNS/TNSOS/THES5",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "875e9e71-7839-47f1-863e-7d8fc4c7002f",
 "name" : "New School - Offsite - Video (VIDEO)",
 "code" : "US-NNNS/US-NNNS/TNSOS/VIDEO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "9120995e-fdde-4934-b7f3-7f0a65675540",
 "name" : "New School - Offsite - Video (VID03)",
 "code" : "US-NNNS/US-NNNS/TNSOS/VID03",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "80402036-8bb7-47cc-8095-74c57af828d3",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "name" : "Performing Arts Library",
 "code" : "TNSSC",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "467c2035-e15b-4a46-ada6-1821db2438fb",
 "name" : "New School - Performing Arts Library - Annex (ANNEX)",
 "code" : "US-NNNS/US-NNNS/TNSSC/ANNEX",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "eaadea2c-94c2-43b8-be8c-5e0580a9604a",
 "name" : "New School - Performing Arts Library - Archives (ARCH)",
 "code" : "US-NNNS/US-NNNS/TNSSC/ARCH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "506efbb0-306d-4910-ae27-2630f8327a08",
 "name" : "New School - Performing Arts Library - Audio Visual (AV)",
 "code" : "US-NNNS/US-NNNS/TNSSC/AV",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4ac9df86-29d3-42f3-ae63-3f7d6d7d9cf2",
 "name" : "New School - Performing Arts Library - Circ Desk (CIRC)",
 "code" : "US-NNNS/US-NNNS/TNSSC/CIRC",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "32086ab3-e9df-402a-b58a-dd591b3a76fe",
 "name" : "New School - Performing Arts Library - Main Collection (MAIN)",
 "code" : "US-NNNS/US-NNNS/TNSSC/MAIN",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "507eaf07-4274-408e-bb01-18b12afed5b2",
 "name" : "New School - Performing Arts Library - Miniature Scores (MINI)",
 "code" : "US-NNNS/US-NNNS/TNSSC/MINI",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6d7c09e8-088d-4bab-ad09-e304f74d2b49",
 "name" : "New School - Performing Arts Library - Music Reference (MUREF)",
 "code" : "US-NNNS/US-NNNS/TNSSC/MUREF",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f5cb9636-387c-4a0a-b727-1f671ec6f8e0",
 "name" : "New School - Performing Arts Library - Music (MUSIC)",
 "code" : "US-NNNS/US-NNNS/TNSSC/MUSIC",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d513c4b7-f8da-4fad-bb34-17dc666483cd",
 "name" : "New School - Performing Arts Library - E-ZBorrow (NCIP)",
 "code" : "US-NNNS/US-NNNS/TNSSC/NCIP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3f7240d2-6cc1-4bc6-a6dc-146c888e61a9",
 "name" : "New School - Performing Arts Library - Reserve Collection (NRES)",
 "code" : "US-NNNS/US-NNNS/TNSSC/NRES",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d5a243e4-5d57-4678-a7bc-c0d97eae02e7",
 "name" : "New School - Performing Arts Library - Office (OFFIC)",
 "code" : "US-NNNS/US-NNNS/TNSSC/OFFIC",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "201ff153-e0be-4d93-8e3a-cb4d53f51084",
 "name" : "New School - Performing Arts Library - Oversize Collection (OVERZ)",
 "code" : "US-NNNS/US-NNNS/TNSSC/OVERZ",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "57428a39-b46b-4df6-b0e5-8fe527fa84f3",
 "name" : "New School - Performing Arts Library - Oversize Score Collection (OVERM)",
 "code" : "US-NNNS/US-NNNS/TNSSC/OVERM",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "5c9f8734-e520-4f2a-a9fb-9c2787a6fabc",
 "name" : "New School - Performing Arts Library - Periodicals (PERIO)",
 "code" : "US-NNNS/US-NNNS/TNSSC/PERIO",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6afdacaa-937e-40ad-82af-f57718b9dc35",
 "name" : "New School - Performing Arts Library - Reference (REF)",
 "code" : "US-NNNS/US-NNNS/TNSSC/REF",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7a7b307a-0e9c-4eeb-8536-6ecb253c0933",
 "name" : "New School - Performing Arts Library - Score Collection (SCORE)",
 "code" : "US-NNNS/US-NNNS/TNSFO/SCORE",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0c175409-9d52-4d27-b646-d71cf3337f29",
 "name" : "New School - Performing Arts Library - Full Score (SCORE)",
 "code" : "US-NNNS/US-NNNS/TNSSC/SCORE",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3d4ae129-7e35-47cd-9dfd-08c442b0bf9d",
 "name" : "New School - Performing Arts Library - SpecCol (SPCL)",
 "code" : "US-NNNS/US-NNNS/TNSSC/SPCL",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fac240f7-1e84-46c5-b126-94fc5aa4ddb4",
 "name" : "New School - Performing Arts Library - SpecCol Periodicals (SPCLP)",
 "code" : "US-NNNS/US-NNNS/TNSSC/SPCLP",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "9b3430a6-af1d-477e-9a82-b8ad6c198614",
 "name" : "New School - Performing Arts Library - Tech Center (TECH)",
 "code" : "US-NNNS/US-NNNS/TNSSC/TECH",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "93b57b3a-eb44-49dd-8581-2c511ca51ddb",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "33eb8846-a434-4cf1-a9df-427e28754341",
 "name" : "internet Resources",
 "code" : "TWEB",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "40c4e931-2fec-487c-8cfc-3d09a1983e9e",
 "name" : "New School - internet Resources - Internet Resources (TNSI)",
 "code" : "US-NNNS/US-NNNS/TWEB/TNSI",
 "isActive": true,
 "institutionId" : "c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd",
 "campusId" : "461dd110-282f-4bbf-9979-738024056abb",
 "libraryId" : "33eb8846-a434-4cf1-a9df-427e28754341",
 "primaryServicePoint": "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1",
 "servicePointIds": [ "2d4fcfa4-e820-4cf5-8e75-1e0701cafff1" ]
}' \
$protocol://$host/locations

