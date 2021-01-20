banner=" This will create a low-level locations hierarchy for Temple"

. $1

curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "17bb9b44-0063-44cc-8f1a-ccbb6188060b",
        "name": "ReShare_US-PPT",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types/17bb9b44-0063-44cc-8f1a-ccbb6188060b

curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "efb9addf-caf4-4052-bb17-135cb4aa0594",
        "name": "Temple",
        "code": "US-PPT",
        "discoveryDisplayName": "Temple",
        "pickupLocation": true,
        "holdShelfExpiryPeriod": {
          "duration": 3,
          "intervalId": "Weeks"
        }
      }' \
  $protocol://$host/service-points/efb9addf-caf4-4052-bb17-135cb4aa0594

curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "05770b43-8f13-41e3-9ffd-8c13ae570d18",
        "name": "Temple",
        "code": "US-PPT"
     }' \
  $protocol://$host/location-units/institutions/05770b43-8f13-41e3-9ffd-8c13ae570d18

curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "e4cb3320-adba-4412-98fe-1f8576ec50db",
        "name": "Temple",
        "code": "US-PPT",
        "institutionId": "05770b43-8f13-41e3-9ffd-8c13ae570d18"
     }' \
  $protocol://$host/location-units/campuses/e4cb3320-adba-4412-98fe-1f8576ec50db


curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "bb973f8b-096d-4a30-9434-5e094facdc54",
        "name": "Temple",
        "code": "US-PPT",
        "campusId": "e4cb3320-adba-4412-98fe-1f8576ec50db"
     }' \
  $protocol://$host/location-units/libraries/bb973f8b-096d-4a30-9434-5e094facdc54

curl -w '\n' -X PUT -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "87038e41-0990-49ea-abd9-1ad00a786e45",
        "name": "Temple - Unmapped location",
        "code": "US-PPT/US-PPT/US-PPT/US-PPT",
        "isActive": true,
        "institutionId": "05770b43-8f13-41e3-9ffd-8c13ae570d18",
        "campusId": "e4cb3320-adba-4412-98fe-1f8576ec50db",
        "libraryId": "bb973f8b-096d-4a30-9434-5e094facdc54",
        "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
        "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
    }' \
    $protocol://$host/locations/87038e41-0990-49ea-abd9-1ad00a786e45


curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "name" : "Ambler Campus Library",
 "code" : "AMBLER",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/83ffa7c7-08fe-4eb3-b7c2-c95897d07155

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3b023939-4927-4ad2-928d-8528918d473b",
 "name" : "Temple - Ambler Archives Collection",
 "code" : "US-PPT/US-PPT/AMBLER/aarc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3b023939-4927-4ad2-928d-8528918d473b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "fcd5b7dc-5070-43d2-9b6d-50f9ff5c901c",
 "name" : "Temple - Ambler Leisure Reading",
 "code" : "US-PPT/US-PPT/AMBLER/aleisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/fcd5b7dc-5070-43d2-9b6d-50f9ff5c901c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "150ff2d9-3fc5-4b8d-b0ff-462e0bc48afe",
 "name" : "Temple - Ambler IMC",
 "code" : "US-PPT/US-PPT/AMBLER/imc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/150ff2d9-3fc5-4b8d-b0ff-462e0bc48afe

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "00d66d45-3aec-4943-8f3a-d8a58bab9928",
 "name" : "Temple - Ambler Internal Reference",
 "code" : "US-PPT/US-PPT/AMBLER/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/00d66d45-3aec-4943-8f3a-d8a58bab9928

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "654dbc19-477e-4c78-8ebd-ad13d1352641",
 "name" : "Temple - Ambler Media",
 "code" : "US-PPT/US-PPT/AMBLER/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/654dbc19-477e-4c78-8ebd-ad13d1352641

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "db49487b-145a-4fe2-9bc5-5fa136e2b951",
 "name" : "Temple - Ambler Microform",
 "code" : "US-PPT/US-PPT/AMBLER/micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/db49487b-145a-4fe2-9bc5-5fa136e2b951

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d4b1903a-ff15-42ff-a402-b52d9c7ae0e2",
 "name" : "Temple - Ambler New Books Shelf",
 "code" : "US-PPT/US-PPT/AMBLER/newbooks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d4b1903a-ff15-42ff-a402-b52d9c7ae0e2

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "f72e2dc0-caef-469c-901f-fef9c75c1d49",
 "name" : "Temple - Ambler Oversize",
 "code" : "US-PPT/US-PPT/AMBLER/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/f72e2dc0-caef-469c-901f-fef9c75c1d49

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "2d34dbdf-6604-4c3a-8a5d-6d7a4dd0bdee",
 "name" : "Temple - Ambler Reference",
 "code" : "US-PPT/US-PPT/AMBLER/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/2d34dbdf-6604-4c3a-8a5d-6d7a4dd0bdee

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "dfbbbb68-1407-44f6-b3a4-450202d4af40",
 "name" : "Temple - Ambler Reserves",
 "code" : "US-PPT/US-PPT/AMBLER/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/dfbbbb68-1407-44f6-b3a4-450202d4af40

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "20fcc83e-a359-4ef8-9cc9-d12db6ab3835",
 "name" : "Temple - Ambler Stacks",
 "code" : "US-PPT/US-PPT/AMBLER/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/20fcc83e-a359-4ef8-9cc9-d12db6ab3835

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "name" : "Charles Bookbot",
 "code" : "ASRS",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/aed91ea4-3ec7-4b4e-94d6-3abf498ec92d

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c2d4105c-69d3-4af5-a020-2f3b8c842ebc",
 "name" : "Temple - Automated Storage System",
 "code" : "US-PPT/US-PPT/ASRS/ASRS",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c2d4105c-69d3-4af5-a020-2f3b8c842ebc

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "98f3ed1f-198a-493b-a9c8-0867a012e7a8",
 "name" : "Temple - ASRS Media",
 "code" : "US-PPT/US-PPT/ASRS/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/98f3ed1f-198a-493b-a9c8-0867a012e7a8

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d608d295-e8f9-4cc6-a4df-17d05a33f0d1",
 "name" : "Temple - ASRS Non-Circulating",
 "code" : "US-PPT/US-PPT/ASRS/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d608d295-e8f9-4cc6-a4df-17d05a33f0d1

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "3d620483-1a14-4077-8a51-09f367f43964",
 "name" : "Blockson Collection",
 "code" : "BLOCKSON",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/3d620483-1a14-4077-8a51-09f367f43964

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "91bb0a23-2132-4084-b69f-ca3190546d70",
 "name" : "Temple - Blockson Rare Stacks",
 "code" : "US-PPT/US-PPT/BLOCKSON/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "3d620483-1a14-4077-8a51-09f367f43964",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/91bb0a23-2132-4084-b69f-ca3190546d70

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "5538cf90-eff1-48a6-8974-50a312e2f30c",
 "name" : "CLA Ed Tech Library",
 "code" : "CLAEDTlECH",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/5538cf90-eff1-48a6-8974-50a312e2f30c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "48cd53a4-fe39-4b37-a647-773700040fab",
 "name" : "Temple - CLA ED Tech Media",
 "code" : "US-PPT/US-PPT/CLAEDTlECH/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "5538cf90-eff1-48a6-8974-50a312e2f30c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/48cd53a4-fe39-4b37-a647-773700040fab

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "name" : "CLA Ed Tech Library",
 "code" : "CLAEDTECH",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/2a494bb8-797f-4b78-b78b-1efcb5c24eb0

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "94384975-2aad-4ef0-a75c-0d48a049b2fc",
 "name" : "Temple - CLA Ed Tech Reserves",
 "code" : "US-PPT/US-PPT/CLAEDTECH/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/94384975-2aad-4ef0-a75c-0d48a049b2fc

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "name" : "Duckworth Scholars Studio",
 "code" : "DSC",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/37be0ee2-e9f0-4ba8-b5b4-cd57896181b9

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "872a75b9-d0b9-4be2-ba15-f544e7b2d093",
 "name" : "Temple - DSC Equipment",
 "code" : "US-PPT/US-PPT/DSC/DSC",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/872a75b9-d0b9-4be2-ba15-f544e7b2d093

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "384ac5ea-701b-496e-8dc4-36d9eec3062c",
 "name" : "Temple - DSC Games",
 "code" : "US-PPT/US-PPT/DSC/games",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/384ac5ea-701b-496e-8dc4-36d9eec3062c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "5101ffe1-612e-4fe8-88b3-49f859ae891b",
 "name" : "Temple - DSC Reference",
 "code" : "US-PPT/US-PPT/DSC/REF",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/5101ffe1-612e-4fe8-88b3-49f859ae891b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "263481d0-e1eb-44ca-b2dd-b14c034d8627",
 "name" : "Temple - DSC Reserves",
 "code" : "US-PPT/US-PPT/DSC/dss_reserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/263481d0-e1eb-44ca-b2dd-b14c034d8627

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "1d73940c-3303-473f-8296-eba3012e468c",
 "name" : "Ginsburg Health Science Library",
 "code" : "GINSBURG",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/1d73940c-3303-473f-8296-eba3012e468c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "8020fda6-8c67-4ef4-a6ac-1935d91ef40f",
 "name" : "Temple - Ginsburg Circulation Collection",
 "code" : "US-PPT/US-PPT/GINSBURG/circ",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/8020fda6-8c67-4ef4-a6ac-1935d91ef40f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3828c24d-e15e-4c21-99e7-0b7eda7ff16c",
 "name" : "Temple - Ginsburg Internal Reference",
 "code" : "US-PPT/US-PPT/GINSBURG/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3828c24d-e15e-4c21-99e7-0b7eda7ff16c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "0de293b2-8ec1-4042-be66-f0aa00dc473b",
 "name" : "Temple - Ginsburg Leisure",
 "code" : "US-PPT/US-PPT/GINSBURG/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/0de293b2-8ec1-4042-be66-f0aa00dc473b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "003feae2-f24b-4283-ac23-d960a14fe069",
 "name" : "Temple - Ginsburg Medical Humanities",
 "code" : "US-PPT/US-PPT/GINSBURG/medhum",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/003feae2-f24b-4283-ac23-d960a14fe069

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "4c2e7896-e287-4c47-8b65-98a27eaa5ace",
 "name" : "Temple - Ginsburg Oversize",
 "code" : "US-PPT/US-PPT/GINSBURG/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/4c2e7896-e287-4c47-8b65-98a27eaa5ace

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "6963cf8d-07bb-4082-a7c0-460d5e93ab5f",
 "name" : "Temple - Ginsburg Reference",
 "code" : "US-PPT/US-PPT/GINSBURG/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/6963cf8d-07bb-4082-a7c0-460d5e93ab5f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "78433f4a-a95f-409a-a841-08e25e705c7c",
 "name" : "Temple - Ginsburg Reserves",
 "code" : "US-PPT/US-PPT/GINSBURG/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/78433f4a-a95f-409a-a841-08e25e705c7c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "df64aae2-644c-41a9-b7f4-b44516ca6b01",
 "name" : "Temple - Ginsburg Serials",
 "code" : "US-PPT/US-PPT/GINSBURG/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/df64aae2-644c-41a9-b7f4-b44516ca6b01

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "e7c39542-883a-4eb7-86ea-b31dc4a8260c",
 "name" : "Temple - Ginsburg Stacks",
 "code" : "US-PPT/US-PPT/GINSBURG/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/e7c39542-883a-4eb7-86ea-b31dc4a8260c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "80cc1d99-1869-4468-b59e-597f4085e084",
 "name" : "Temple - Ginsburg Technical Services",
 "code" : "US-PPT/US-PPT/GINSBURG/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/80cc1d99-1869-4468-b59e-597f4085e084

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "name" : "Harrisburg Campus Library",
 "code" : "HARRISBURG",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/b01082fe-3e06-4759-8a0a-715c522e2d54

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "11bc705c-7219-47fe-99c1-4eacd62c1c0e",
 "name" : "Temple - Harrisburg Library",
 "code" : "US-PPT/US-PPT/HARRISBURG/harrisburg",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/11bc705c-7219-47fe-99c1-4eacd62c1c0e

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "56e7990c-ec27-455e-ba67-ab3b32230e4b",
 "name" : "Temple - Harrisburg Internal Reference",
 "code" : "US-PPT/US-PPT/HARRISBURG/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/56e7990c-ec27-455e-ba67-ab3b32230e4b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "7e7a1811-4683-4d4e-bcb0-db7af5c168fa",
 "name" : "Temple - Harrisburg Media",
 "code" : "US-PPT/US-PPT/HARRISBURG/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/7e7a1811-4683-4d4e-bcb0-db7af5c168fa

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "38124c16-5520-4ebc-a7c6-cd0f6c676f33",
 "name" : "Temple - Harrisburg Oversize",
 "code" : "US-PPT/US-PPT/HARRISBURG/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/38124c16-5520-4ebc-a7c6-cd0f6c676f33

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "65f88edb-c906-4fe5-9137-baad6479a260",
 "name" : "Temple - Harrisburg Reference",
 "code" : "US-PPT/US-PPT/HARRISBURG/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/65f88edb-c906-4fe5-9137-baad6479a260

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "31e0b189-5915-4d15-85ed-d33d6cf1dfb1",
 "name" : "Temple - Harrisburg Reserves",
 "code" : "US-PPT/US-PPT/HARRISBURG/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/31e0b189-5915-4d15-85ed-d33d6cf1dfb1

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "a35b0715-9c5a-4722-a4e1-adb0712fccbf",
 "name" : "Temple - Harrisburg Stacks",
 "code" : "US-PPT/US-PPT/HARRISBURG/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/a35b0715-9c5a-4722-a4e1-adb0712fccbf

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "name" : "Japan Campus Library",
 "code" : "JAPAN",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/fa452481-2de5-4fcd-9414-4f0b80ef6efb

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "518c242a-f505-4841-9319-8ffd5f369a63",
 "name" : "Temple - Japan Media",
 "code" : "US-PPT/US-PPT/JAPAN/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/518c242a-f505-4841-9319-8ffd5f369a63

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "f100eb85-ace6-4a84-b366-ec35f4bc43da",
 "name" : "Temple - Japan Osaka Collection",
 "code" : "US-PPT/US-PPT/JAPAN/osaka",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/f100eb85-ace6-4a84-b366-ec35f4bc43da

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "16589198-5090-4098-b884-f761db1838c1",
 "name" : "Temple - Japan Reference",
 "code" : "US-PPT/US-PPT/JAPAN/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/16589198-5090-4098-b884-f761db1838c1

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "cc40f151-c471-4a36-8ae5-00609b139971",
 "name" : "Temple - Japan Remote",
 "code" : "US-PPT/US-PPT/JAPAN/remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/cc40f151-c471-4a36-8ae5-00609b139971

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "e702e038-dfd7-4118-a132-51b289ecf233",
 "name" : "Temple - Japan Reserves",
 "code" : "US-PPT/US-PPT/JAPAN/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/e702e038-dfd7-4118-a132-51b289ecf233

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "6a13dbad-20b2-4512-8961-490574bcf34b",
 "name" : "Temple - Japan Serials",
 "code" : "US-PPT/US-PPT/JAPAN/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/6a13dbad-20b2-4512-8961-490574bcf34b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "53b30500-b865-41e1-9557-9ceeab796dce",
 "name" : "Temple - Japan Stacks",
 "code" : "US-PPT/US-PPT/JAPAN/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/53b30500-b865-41e1-9557-9ceeab796dce

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "name" : "Remote Storage",
 "code" : "KARDON",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/f2b47f05-917d-437e-9fbd-24bd709327b4

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "8be54c3d-46cb-4801-800e-07a2c2b8c9ad",
 "name" : "Temple - Ambler Rare Stacks",
 "code" : "US-PPT/US-PPT/KARDON/a_rare",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/8be54c3d-46cb-4801-800e-07a2c2b8c9ad

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3463eede-8815-448f-8114-5c6a56e10490",
 "name" : "Temple - Blockson Rare Stacks",
 "code" : "US-PPT/US-PPT/KARDON/b_rare",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3463eede-8815-448f-8114-5c6a56e10490

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "fb2a8560-6ca8-455a-851e-d3997260c43e",
 "name" : "Temple - Ginsburg Remote Stacks",
 "code" : "US-PPT/US-PPT/KARDON/g_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/fb2a8560-6ca8-455a-851e-d3997260c43e

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "186747f0-ef5c-4bb3-b70f-7d0daab284f4",
 "name" : "Temple - Law Remote",
 "code" : "US-PPT/US-PPT/KARDON/l_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/186747f0-ef5c-4bb3-b70f-7d0daab284f4

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "b168c032-a8be-41db-a7e1-2ed08fb7640c",
 "name" : "Temple - Main Remote GovDocs",
 "code" : "US-PPT/US-PPT/KARDON/p_GovDocs",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/b168c032-a8be-41db-a7e1-2ed08fb7640c

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "4a66d65b-7097-4dc1-b0a6-50fc6598c7fe",
 "name" : "Temple - Main Remote GovDoc Micro",
 "code" : "US-PPT/US-PPT/KARDON/p_govdocmf",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/4a66d65b-7097-4dc1-b0a6-50fc6598c7fe

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "e8ac82cc-3683-44a5-a26d-0fb03b1d6a65",
 "name" : "Temple - Main Remote Media",
 "code" : "US-PPT/US-PPT/KARDON/p_media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/e8ac82cc-3683-44a5-a26d-0fb03b1d6a65

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3c506982-123b-461e-9442-6bf88cb60018",
 "name" : "Temple - Main Remote Micro",
 "code" : "US-PPT/US-PPT/KARDON/p_micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3c506982-123b-461e-9442-6bf88cb60018

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "23ea8820-1db8-4204-890f-0b479d9b42bd",
 "name" : "Temple - Main Remote Oversize",
 "code" : "US-PPT/US-PPT/KARDON/p_oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/23ea8820-1db8-4204-890f-0b479d9b42bd

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "86e74702-9a3a-481e-b327-9cf5dea368bc",
 "name" : "Temple - Main Remote Stacks",
 "code" : "US-PPT/US-PPT/KARDON/p_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/86e74702-9a3a-481e-b327-9cf5dea368bc

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "8835b1ea-399d-49cc-bda7-13554790f474",
 "name" : "LAPTOP KIOSKS",
 "code" : "KIOSK",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/8835b1ea-399d-49cc-bda7-13554790f474

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "f703a962-9730-46d3-aa3e-b3ff5ffeef29",
 "name" : "Temple - Laptop Kiosks",
 "code" : "US-PPT/US-PPT/KIOSK/kiosk",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/f703a962-9730-46d3-aa3e-b3ff5ffeef29

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "23587ba4-9990-4903-b88f-6b7636ebf166",
 "name" : "Law Library",
 "code" : "LAW",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/23587ba4-9990-4903-b88f-6b7636ebf166

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "7725cc3f-b0a0-4a81-be09-7adfe2d01543",
 "name" : "Temple - Law Special Collections - Archives - 1A",
 "code" : "US-PPT/US-PPT/LAW/archives",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/7725cc3f-b0a0-4a81-be09-7adfe2d01543

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "dbb9222c-d9ca-4728-9f27-44838f142214",
 "name" : "Temple - Law Closed Stacks - 2, 2A, 3",
 "code" : "US-PPT/US-PPT/LAW/closestack",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/dbb9222c-d9ca-4728-9f27-44838f142214

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3550fe4d-05ee-4279-9d03-fe9acf6a4503",
 "name" : "Temple - Law Open Stacks - Gov Docs - 7",
 "code" : "US-PPT/US-PPT/LAW/govdoc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3550fe4d-05ee-4279-9d03-fe9acf6a4503

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d0324d78-bec4-4e77-9b84-07a21e199f0e",
 "name" : "Temple - Law Special Collections - Hirst - 1A",
 "code" : "US-PPT/US-PPT/LAW/hirst",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d0324d78-bec4-4e77-9b84-07a21e199f0e

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "4e9866bf-a85c-40d8-a267-d91294cd4c56",
 "name" : "Temple - Law Media",
 "code" : "US-PPT/US-PPT/LAW/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/4e9866bf-a85c-40d8-a267-d91294cd4c56

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "b5f98269-f3ab-415b-a101-3259a0aea907",
 "name" : "Temple - Law Micro",
 "code" : "US-PPT/US-PPT/LAW/micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/b5f98269-f3ab-415b-a101-3259a0aea907

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d5a49b35-d971-42e0-8fa0-9396dfc29f3a",
 "name" : "Temple - Law Open Stacks - 3",
 "code" : "US-PPT/US-PPT/LAW/open3",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d5a49b35-d971-42e0-8fa0-9396dfc29f3a

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "136fd3a6-2208-4cfa-8e29-5b25ba137aa8",
 "name" : "Temple - Law Open Stacks - 3A",
 "code" : "US-PPT/US-PPT/LAW/open3a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/136fd3a6-2208-4cfa-8e29-5b25ba137aa8

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "a3ad5984-0ddd-49e4-87f2-bbea2fdf5bc1",
 "name" : "Temple - Law Open Stacks - 4",
 "code" : "US-PPT/US-PPT/LAW/open4",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/a3ad5984-0ddd-49e4-87f2-bbea2fdf5bc1

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "26fc9e1c-f532-4d11-8857-d928fc67fb6b",
 "name" : "Temple - Law Open Stacks - 4A",
 "code" : "US-PPT/US-PPT/LAW/open4a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/26fc9e1c-f532-4d11-8857-d928fc67fb6b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "f8fc5206-d0c4-4274-8ce5-e3f809b3560f",
 "name" : "Temple - Law Open Stacks - 5",
 "code" : "US-PPT/US-PPT/LAW/open5",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/f8fc5206-d0c4-4274-8ce5-e3f809b3560f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "36d37b24-af57-4bd0-b073-6b8aabdba8ca",
 "name" : "Temple - Law Open Stacks - 5A",
 "code" : "US-PPT/US-PPT/LAW/open5a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/36d37b24-af57-4bd0-b073-6b8aabdba8ca

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d15a73e8-3c03-4731-9a9e-112e0dccc1b7",
 "name" : "Temple - Law Open Stacks - 6A",
 "code" : "US-PPT/US-PPT/LAW/open6a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d15a73e8-3c03-4731-9a9e-112e0dccc1b7

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c59d77ca-3a7e-46ef-9cdf-ccdf242c1c67",
 "name" : "Temple - Law Closed Stacks - Oversize - 2",
 "code" : "US-PPT/US-PPT/LAW/oversize2",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c59d77ca-3a7e-46ef-9cdf-ccdf242c1c67

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "26d62136-76a2-4fca-b03c-c84ad674e529",
 "name" : "Temple - Law Closed Stacks - Oversize - 5A",
 "code" : "US-PPT/US-PPT/LAW/oversize5a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/26d62136-76a2-4fca-b03c-c84ad674e529

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "049e502c-8e87-49fb-b85b-ce88339e8c62",
 "name" : "Temple - Law Special Collections - Law Pamphlets - 1A",
 "code" : "US-PPT/US-PPT/LAW/pamphlets",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/049e502c-8e87-49fb-b85b-ce88339e8c62

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c0334544-f513-4701-986c-63203ee15965",
 "name" : "Temple - Law Rare Stacks",
 "code" : "US-PPT/US-PPT/LAW/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c0334544-f513-4701-986c-63203ee15965

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "eed4bf5a-d1f6-4674-83f7-7ffde7a9b6fb",
 "name" : "Temple - Law Special Collections - Rawle - 1A",
 "code" : "US-PPT/US-PPT/LAW/rawle",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/eed4bf5a-d1f6-4674-83f7-7ffde7a9b6fb

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "987376e4-d326-47ca-af57-eb251d027a6d",
 "name" : "Temple - Law Special Collections - Rawle Room",
 "code" : "US-PPT/US-PPT/LAW/rawle3",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/987376e4-d326-47ca-af57-eb251d027a6d

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "10be5aff-ab25-4db1-8e96-a9d41e8f2f7d",
 "name" : "Temple - Law Reference",
 "code" : "US-PPT/US-PPT/LAW/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/10be5aff-ab25-4db1-8e96-a9d41e8f2f7d

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "dacaff15-4f92-45e4-ac55-b125c10ba822",
 "name" : "Temple - Law Reserves",
 "code" : "US-PPT/US-PPT/LAW/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/dacaff15-4f92-45e4-ac55-b125c10ba822

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "34b41444-af38-41d1-abc8-2ee21d60af26",
 "name" : "Temple - Law Serials",
 "code" : "US-PPT/US-PPT/LAW/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/34b41444-af38-41d1-abc8-2ee21d60af26

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "6ca139c5-8bde-4c26-99be-69be5f79f743",
 "name" : "Temple - Law Special Collections - International - 1A",
 "code" : "US-PPT/US-PPT/LAW/specintl",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/6ca139c5-8bde-4c26-99be-69be5f79f743

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "e90f2a00-8b42-4340-b38e-187bcedc0621",
 "name" : "Temple - Law Special Collections - Pennsylvania - 1A",
 "code" : "US-PPT/US-PPT/LAW/specpa",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/e90f2a00-8b42-4340-b38e-187bcedc0621

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "fc888dce-7974-4762-b373-f8ef35039712",
 "name" : "Temple - Law Stacks",
 "code" : "US-PPT/US-PPT/LAW/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/fc888dce-7974-4762-b373-f8ef35039712

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "3718680f-aa78-40d0-a267-8f637886bc00",
 "name" : "Temple - Law Special Collections - English Trials - 1A",
 "code" : "US-PPT/US-PPT/LAW/trials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/3718680f-aa78-40d0-a267-8f637886bc00

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "name" : "Charles Library",
 "code" : "MAIN",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/0b3bec49-a3bd-49dd-a233-00b7535ca7f3

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "ba26466e-95c5-4931-b055-98d0396ff10f",
 "name" : "Temple - Main Hirsch Juvenile",
 "code" : "US-PPT/US-PPT/MAIN/hirsch",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/ba26466e-95c5-4931-b055-98d0396ff10f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "f66c87e4-b27e-4d1e-909e-2d4d486ecc2f",
 "name" : "Temple - Main Juvenile",
 "code" : "US-PPT/US-PPT/MAIN/juvenile",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/f66c87e4-b27e-4d1e-909e-2d4d486ecc2f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "a54bd0b4-38f3-4cbe-a53e-c5572b72ad22",
 "name" : "Temple - Main Leisure",
 "code" : "US-PPT/US-PPT/MAIN/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/a54bd0b4-38f3-4cbe-a53e-c5572b72ad22

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "9592fc29-37fb-438e-9ca8-7d585e5e82e3",
 "name" : "Temple - Main Media Reserves",
 "code" : "US-PPT/US-PPT/MAIN/m_reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/9592fc29-37fb-438e-9ca8-7d585e5e82e3

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "29f88690-7cb9-4894-98e1-5ababf3e2b8a",
 "name" : "Temple - Main New Books",
 "code" : "US-PPT/US-PPT/MAIN/newbooks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/29f88690-7cb9-4894-98e1-5ababf3e2b8a

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "19081061-eb1f-4a4a-b570-e15d5c9179c8",
 "name" : "Temple - Main Reference",
 "code" : "US-PPT/US-PPT/MAIN/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/19081061-eb1f-4a4a-b570-e15d5c9179c8

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "7242cbe8-51db-4960-b0cd-804856d273af",
 "name" : "Temple - Main Reserves",
 "code" : "US-PPT/US-PPT/MAIN/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/7242cbe8-51db-4960-b0cd-804856d273af

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "66afe9ad-5db4-4a72-bdbc-c1281b5e0f5a",
 "name" : "Temple - Main Current Periodicals",
 "code" : "US-PPT/US-PPT/MAIN/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/66afe9ad-5db4-4a72-bdbc-c1281b5e0f5a

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "2b3a68d6-d8b8-4a91-a8df-3338bc029ab9",
 "name" : "Temple - Main Service Desk",
 "code" : "US-PPT/US-PPT/MAIN/servicedsk",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/2b3a68d6-d8b8-4a91-a8df-3338bc029ab9

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "26e0bca0-65c3-4164-95c8-3a34788dbbbd",
 "name" : "Temple - Main Stacks",
 "code" : "US-PPT/US-PPT/MAIN/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/26e0bca0-65c3-4164-95c8-3a34788dbbbd

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "8df0b46c-7233-49e9-9575-3dc8c8c8772d",
 "name" : "Temple - Main Storage",
 "code" : "US-PPT/US-PPT/MAIN/storage",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/8df0b46c-7233-49e9-9575-3dc8c8c8772d

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d449059a-b306-4205-9b00-e579b259570f",
 "name" : "Temple - Main Technical Services",
 "code" : "US-PPT/US-PPT/MAIN/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d449059a-b306-4205-9b00-e579b259570f

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "name" : "Podiatry Library",
 "code" : "PODIATRY",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/d6dbd4fd-b2a2-4473-b366-984085669d6a

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "65b9a2ad-c69c-4c5b-9ee2-65b879e56a72",
 "name" : "Temple - Podiatry Internal Reference",
 "code" : "US-PPT/US-PPT/PODIATRY/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/65b9a2ad-c69c-4c5b-9ee2-65b879e56a72

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "42e04209-bb1c-4d6b-80cf-4b14536b0e65",
 "name" : "Temple - Podiatry Leisure",
 "code" : "US-PPT/US-PPT/PODIATRY/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/42e04209-bb1c-4d6b-80cf-4b14536b0e65

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "691b4339-80d4-427e-9320-3b23359a4b03",
 "name" : "Temple - Podiatry Media",
 "code" : "US-PPT/US-PPT/PODIATRY/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/691b4339-80d4-427e-9320-3b23359a4b03

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "043641d9-dfd2-4efc-9801-fc74bbd28735",
 "name" : "Temple - Podiatry Reference",
 "code" : "US-PPT/US-PPT/PODIATRY/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/043641d9-dfd2-4efc-9801-fc74bbd28735

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c399f199-89ee-4ac4-b20f-2020d51e8f81",
 "name" : "Temple - Podiatry Reserves",
 "code" : "US-PPT/US-PPT/PODIATRY/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c399f199-89ee-4ac4-b20f-2020d51e8f81

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c3b423eb-5899-405d-a0cd-dfa327de0f75",
 "name" : "Temple - Podiatry Serials",
 "code" : "US-PPT/US-PPT/PODIATRY/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c3b423eb-5899-405d-a0cd-dfa327de0f75

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "911b0f8f-0192-4772-b530-a63ee21848e0",
 "name" : "Temple - Podiatry Stacks",
 "code" : "US-PPT/US-PPT/PODIATRY/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/911b0f8f-0192-4772-b530-a63ee21848e0

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "083f2a86-c7f3-414b-9a4a-8c91bb6abc73",
 "name" : "Temple - Podiatry Technical Services",
 "code" : "US-PPT/US-PPT/PODIATRY/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/083f2a86-c7f3-414b-9a4a-8c91bb6abc73

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "name" : "Presser Listening Library",
 "code" : "PRESSER",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/d407cdd3-f1b2-4ee1-b77b-64b38a2dc849

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "6dd970eb-3aa4-48a0-9be2-95c76043cadd",
 "name" : "Temple - Presser Listening Library",
 "code" : "US-PPT/US-PPT/PRESSER/plc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/6dd970eb-3aa4-48a0-9be2-95c76043cadd

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "56adba42-e5db-4a43-8199-918e8acaaf75",
 "name" : "Temple - Presser Library",
 "code" : "US-PPT/US-PPT/PRESSER/presser",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/56adba42-e5db-4a43-8199-918e8acaaf75

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "1ee02844-1840-4477-b414-6ad7987f538d",
 "name" : "Rome Campus Library",
 "code" : "ROME",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/1ee02844-1840-4477-b414-6ad7987f538d

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "239d242f-6a50-4b03-9609-b5e59a9cad0b",
 "name" : "Temple - Rome Exhibits",
 "code" : "US-PPT/US-PPT/ROME/exhibit",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/239d242f-6a50-4b03-9609-b5e59a9cad0b

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "21b44873-879e-4f6f-9f10-b858a6a081de",
 "name" : "Temple - Rome Fiction",
 "code" : "US-PPT/US-PPT/ROME/fiction",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/21b44873-879e-4f6f-9f10-b858a6a081de

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "c7491056-7ad4-4ffb-824d-18c5279be8b6",
 "name" : "Temple - Rome Media",
 "code" : "US-PPT/US-PPT/ROME/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/c7491056-7ad4-4ffb-824d-18c5279be8b6

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "334c1006-1f62-407f-bdbc-1aeb81b43448",
 "name" : "Temple - Rome Oversize",
 "code" : "US-PPT/US-PPT/ROME/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/334c1006-1f62-407f-bdbc-1aeb81b43448

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "294325af-ade4-4696-8f46-0d5af99c3aa6",
 "name" : "Temple - Rome Reference",
 "code" : "US-PPT/US-PPT/ROME/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/294325af-ade4-4696-8f46-0d5af99c3aa6

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "48af1fc8-0fc2-4815-b45d-293c0d556516",
 "name" : "Temple - Rome Reserves",
 "code" : "US-PPT/US-PPT/ROME/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/48af1fc8-0fc2-4815-b45d-293c0d556516

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "d0ac810a-cf5d-4db9-b90c-0987bffb2456",
 "name" : "Temple - Rome Serials",
 "code" : "US-PPT/US-PPT/ROME/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/d0ac810a-cf5d-4db9-b90c-0987bffb2456

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "38d66a15-7b49-44aa-8b5b-c37827f881f0",
 "name" : "Temple - Rome Stacks",
 "code" : "US-PPT/US-PPT/ROME/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/38d66a15-7b49-44aa-8b5b-c37827f881f0

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d'{
 "id": "1ee02844-1840-4477-b414-6ad7987f538d",
 "name" : "Special Collections Research Center",
 "code" : "SCRC",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries/32c8be97-e098-4747-8a9b-75d51faa4608

curl -w '\n' -X PUT -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d  '{
 "id": "07a5c264-2c20-44f8-94dc-d665cae54f07",
 "name" : "Temple - SCRC Rare Stacks",
 "code" : "US-PPT/US-PPT/SCRC/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations/07a5c264-2c20-44f8-94dc-d665cae54f07
