banner=" This will create a low-level locations hierarchy for Temple"

. $1

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

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "name" : "Ambler Campus Library",
 "code" : "AMBLER",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "name" : "Ambler Campus Library",
 "code" : "AMBLER",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3b023939-4927-4ad2-928d-8528918d473b",
 "name" : "Ambler Archives Collection",
 "code" : "TEU/TEU/AMBLER/aarc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fcd5b7dc-5070-43d2-9b6d-50f9ff5c901c",
 "name" : "Ambler Leisure Reading",
 "code" : "TEU/TEU/AMBLER/aleisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "150ff2d9-3fc5-4b8d-b0ff-462e0bc48afe",
 "name" : "Ambler IMC",
 "code" : "TEU/TEU/AMBLER/imc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "00d66d45-3aec-4943-8f3a-d8a58bab9928",
 "name" : "Ambler Internal Reference",
 "code" : "TEU/TEU/AMBLER/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "654dbc19-477e-4c78-8ebd-ad13d1352641",
 "name" : "Ambler Media",
 "code" : "TEU/TEU/AMBLER/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "db49487b-145a-4fe2-9bc5-5fa136e2b951",
 "name" : "Ambler Microform",
 "code" : "TEU/TEU/AMBLER/micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d4b1903a-ff15-42ff-a402-b52d9c7ae0e2",
 "name" : "Ambler New Books Shelf",
 "code" : "TEU/TEU/AMBLER/newbooks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f72e2dc0-caef-469c-901f-fef9c75c1d49",
 "name" : "Ambler Oversize",
 "code" : "TEU/TEU/AMBLER/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "2d34dbdf-6604-4c3a-8a5d-6d7a4dd0bdee",
 "name" : "Ambler Reference",
 "code" : "TEU/TEU/AMBLER/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "dfbbbb68-1407-44f6-b3a4-450202d4af40",
 "name" : "Ambler Reserves",
 "code" : "TEU/TEU/AMBLER/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "20fcc83e-a359-4ef8-9cc9-d12db6ab3835",
 "name" : "Ambler Stacks",
 "code" : "TEU/TEU/AMBLER/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "83ffa7c7-08fe-4eb3-b7c2-c95897d07155",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "name" : "Charles Bookbot",
 "code" : "ASRS",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c2d4105c-69d3-4af5-a020-2f3b8c842ebc",
 "name" : "Automated Storage System",
 "code" : "TEU/TEU/ASRS/asrs",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "98f3ed1f-198a-493b-a9c8-0867a012e7a8",
 "name" : "ASRS Media",
 "code" : "TEU/TEU/ASRS/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d608d295-e8f9-4cc6-a4df-17d05a33f0d1",
 "name" : "ASRS Non-Circulating",
 "code" : "TEU/TEU/ASRS/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "aed91ea4-3ec7-4b4e-94d6-3abf498ec92d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3d620483-1a14-4077-8a51-09f367f43964",
 "name" : "Blockson Collection",
 "code" : "BLOCKSON",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "91bb0a23-2132-4084-b69f-ca3190546d70",
 "name" : "Blockson Rare Stacks",
 "code" : "TEU/TEU/BLOCKSON/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "3d620483-1a14-4077-8a51-09f367f43964",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "5538cf90-eff1-48a6-8974-50a312e2f30c",
 "name" : "CLA Ed Tech Library",
 "code" : "CLAEDTECH",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "48cd53a4-fe39-4b37-a647-773700040fab",
 "name" : "CLA ED Tech Media",
 "code" : "TEU/TEU/CLAEDTECH/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "5538cf90-eff1-48a6-8974-50a312e2f30c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "94384975-2aad-4ef0-a75c-0d48a049b2fc",
 "name" : "CLA Ed Tech Reserves",
 "code" : "TEU/TEU/CLAEDTECH/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "5538cf90-eff1-48a6-8974-50a312e2f30c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "name" : "Duckworth Scholars Studio",
 "code" : "DSC",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "872a75b9-d0b9-4be2-ba15-f544e7b2d093",
 "name" : "DSC Equipment",
 "code" : "TEU/TEU/DSC/DSC",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "384ac5ea-701b-496e-8dc4-36d9eec3062c",
 "name" : "DSC Games",
 "code" : "TEU/TEU/DSC/games",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "5101ffe1-612e-4fe8-88b3-49f859ae891b",
 "name" : "DSC Reference",
 "code" : "TEU/TEU/DSC/REF",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "263481d0-e1eb-44ca-b2dd-b14c034d8627",
 "name" : "DSC Reserves",
 "code" : "TEU/TEU/DSC/dss_reserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "2a494bb8-797f-4b78-b78b-1efcb5c24eb0",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "name" : "Ginsburg Health Science Library",
 "code" : "GINSBURG",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "8020fda6-8c67-4ef4-a6ac-1935d91ef40f",
 "name" : "Ginsburg Circulation Collection",
 "code" : "TEU/TEU/GINSBURG/circ",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3828c24d-e15e-4c21-99e7-0b7eda7ff16c",
 "name" : "Ginsburg Internal Reference",
 "code" : "TEU/TEU/GINSBURG/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0de293b2-8ec1-4042-be66-f0aa00dc473b",
 "name" : "Ginsburg Leisure",
 "code" : "TEU/TEU/GINSBURG/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "003feae2-f24b-4283-ac23-d960a14fe069",
 "name" : "Ginsburg Medical Humanities",
 "code" : "TEU/TEU/GINSBURG/medhum",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4c2e7896-e287-4c47-8b65-98a27eaa5ace",
 "name" : "Ginsburg Oversize",
 "code" : "TEU/TEU/GINSBURG/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6963cf8d-07bb-4082-a7c0-460d5e93ab5f",
 "name" : "Ginsburg Reference",
 "code" : "TEU/TEU/GINSBURG/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "78433f4a-a95f-409a-a841-08e25e705c7c",
 "name" : "Ginsburg Reserves",
 "code" : "TEU/TEU/GINSBURG/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "df64aae2-644c-41a9-b7f4-b44516ca6b01",
 "name" : "Ginsburg Serials",
 "code" : "TEU/TEU/GINSBURG/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "e7c39542-883a-4eb7-86ea-b31dc4a8260c",
 "name" : "Ginsburg Stacks",
 "code" : "TEU/TEU/GINSBURG/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "80cc1d99-1869-4468-b59e-597f4085e084",
 "name" : "Ginsburg Technical Services",
 "code" : "TEU/TEU/GINSBURG/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "37be0ee2-e9f0-4ba8-b5b4-cd57896181b9",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "1d73940c-3303-473f-8296-eba3012e468c",
 "name" : "Harrisburg Campus Library",
 "code" : "HARRISBURG",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "11bc705c-7219-47fe-99c1-4eacd62c1c0e",
 "name" : "Harrisburg Library",
 "code" : "TEU/TEU/HARRISBURG/harrisburg",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "56e7990c-ec27-455e-ba67-ab3b32230e4b",
 "name" : "Harrisburg Internal Reference",
 "code" : "TEU/TEU/HARRISBURG/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7e7a1811-4683-4d4e-bcb0-db7af5c168fa",
 "name" : "Harrisburg Media",
 "code" : "TEU/TEU/HARRISBURG/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "38124c16-5520-4ebc-a7c6-cd0f6c676f33",
 "name" : "Harrisburg Oversize",
 "code" : "TEU/TEU/HARRISBURG/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "65f88edb-c906-4fe5-9137-baad6479a260",
 "name" : "Harrisburg Reference",
 "code" : "TEU/TEU/HARRISBURG/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "31e0b189-5915-4d15-85ed-d33d6cf1dfb1",
 "name" : "Harrisburg Reserves",
 "code" : "TEU/TEU/HARRISBURG/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a35b0715-9c5a-4722-a4e1-adb0712fccbf",
 "name" : "Harrisburg Stacks",
 "code" : "TEU/TEU/HARRISBURG/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1d73940c-3303-473f-8296-eba3012e468c",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "name" : "Japan Campus Library",
 "code" : "JAPAN",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "518c242a-f505-4841-9319-8ffd5f369a63",
 "name" : "Japan Media",
 "code" : "TEU/TEU/JAPAN/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f100eb85-ace6-4a84-b366-ec35f4bc43da",
 "name" : "Japan Osaka Collection",
 "code" : "TEU/TEU/JAPAN/osaka",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "16589198-5090-4098-b884-f761db1838c1",
 "name" : "Japan Reference",
 "code" : "TEU/TEU/JAPAN/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "cc40f151-c471-4a36-8ae5-00609b139971",
 "name" : "Japan Remote",
 "code" : "TEU/TEU/JAPAN/remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "e702e038-dfd7-4118-a132-51b289ecf233",
 "name" : "Japan Reserves",
 "code" : "TEU/TEU/JAPAN/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6a13dbad-20b2-4512-8961-490574bcf34b",
 "name" : "Japan Serials",
 "code" : "TEU/TEU/JAPAN/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "53b30500-b865-41e1-9557-9ceeab796dce",
 "name" : "Japan Stacks",
 "code" : "TEU/TEU/JAPAN/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "b01082fe-3e06-4759-8a0a-715c522e2d54",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "name" : "Remote Storage",
 "code" : "KARDON",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "8be54c3d-46cb-4801-800e-07a2c2b8c9ad",
 "name" : "Ambler Rare Stacks",
 "code" : "TEU/TEU/KARDON/a_rare",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3463eede-8815-448f-8114-5c6a56e10490",
 "name" : "Blockson Rare Stacks",
 "code" : "TEU/TEU/KARDON/b_rare",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fb2a8560-6ca8-455a-851e-d3997260c43e",
 "name" : "Ginsburg Remote Stacks",
 "code" : "TEU/TEU/KARDON/g_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "186747f0-ef5c-4bb3-b70f-7d0daab284f4",
 "name" : "Law Remote",
 "code" : "TEU/TEU/KARDON/l_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b168c032-a8be-41db-a7e1-2ed08fb7640c",
 "name" : "Main Remote GovDocs",
 "code" : "TEU/TEU/KARDON/p_GovDocs",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4a66d65b-7097-4dc1-b0a6-50fc6598c7fe",
 "name" : "Main Remote GovDoc Micro",
 "code" : "TEU/TEU/KARDON/p_govdocmf",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "e8ac82cc-3683-44a5-a26d-0fb03b1d6a65",
 "name" : "Main Remote Media",
 "code" : "TEU/TEU/KARDON/p_media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3c506982-123b-461e-9442-6bf88cb60018",
 "name" : "Main Remote Micro",
 "code" : "TEU/TEU/KARDON/p_micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "23ea8820-1db8-4204-890f-0b479d9b42bd",
 "name" : "Main Remote Oversize",
 "code" : "TEU/TEU/KARDON/p_oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "86e74702-9a3a-481e-b327-9cf5dea368bc",
 "name" : "Main Remote Stacks",
 "code" : "TEU/TEU/KARDON/p_remote",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "fa452481-2de5-4fcd-9414-4f0b80ef6efb",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "name" : "LAPTOP KIOSKS",
 "code" : "KIOSK",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f703a962-9730-46d3-aa3e-b3ff5ffeef29",
 "name" : "Laptop Kiosks",
 "code" : "TEU/TEU/KIOSK/kiosk",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "f2b47f05-917d-437e-9fbd-24bd709327b4",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "8835b1ea-399d-49cc-bda7-13554790f474",
 "name" : "Law Library",
 "code" : "LAW",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7725cc3f-b0a0-4a81-be09-7adfe2d01543",
 "name" : "Law Special Collections - Archives - 1A",
 "code" : "TEU/TEU/LAW/archives",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "dbb9222c-d9ca-4728-9f27-44838f142214",
 "name" : "Law Closed Stacks - 2, 2A, 3",
 "code" : "TEU/TEU/LAW/closestack",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3550fe4d-05ee-4279-9d03-fe9acf6a4503",
 "name" : "Law Open Stacks - Gov Docs - 7",
 "code" : "TEU/TEU/LAW/govdoc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d0324d78-bec4-4e77-9b84-07a21e199f0e",
 "name" : "Law Special Collections - Hirst - 1A",
 "code" : "TEU/TEU/LAW/hirst",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "4e9866bf-a85c-40d8-a267-d91294cd4c56",
 "name" : "Law Media",
 "code" : "TEU/TEU/LAW/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b5f98269-f3ab-415b-a101-3259a0aea907",
 "name" : "Law Micro",
 "code" : "TEU/TEU/LAW/micro",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d5a49b35-d971-42e0-8fa0-9396dfc29f3a",
 "name" : "Law Open Stacks - 3",
 "code" : "TEU/TEU/LAW/open3",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "136fd3a6-2208-4cfa-8e29-5b25ba137aa8",
 "name" : "Law Open Stacks - 3A",
 "code" : "TEU/TEU/LAW/open3a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a3ad5984-0ddd-49e4-87f2-bbea2fdf5bc1",
 "name" : "Law Open Stacks - 4",
 "code" : "TEU/TEU/LAW/open4",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "26fc9e1c-f532-4d11-8857-d928fc67fb6b",
 "name" : "Law Open Stacks - 4A",
 "code" : "TEU/TEU/LAW/open4a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f8fc5206-d0c4-4274-8ce5-e3f809b3560f",
 "name" : "Law Open Stacks - 5",
 "code" : "TEU/TEU/LAW/open5",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "36d37b24-af57-4bd0-b073-6b8aabdba8ca",
 "name" : "Law Open Stacks - 5A",
 "code" : "TEU/TEU/LAW/open5a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d15a73e8-3c03-4731-9a9e-112e0dccc1b7",
 "name" : "Law Open Stacks - 6A",
 "code" : "TEU/TEU/LAW/open6a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c59d77ca-3a7e-46ef-9cdf-ccdf242c1c67",
 "name" : "Law Closed Stacks - Oversize - 2",
 "code" : "TEU/TEU/LAW/oversize2",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "26d62136-76a2-4fca-b03c-c84ad674e529",
 "name" : "Law Closed Stacks - Oversize - 5A",
 "code" : "TEU/TEU/LAW/oversize5a",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "049e502c-8e87-49fb-b85b-ce88339e8c62",
 "name" : "Law Special Collections - Law Pamphlets - 1A",
 "code" : "TEU/TEU/LAW/pamphlets",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c0334544-f513-4701-986c-63203ee15965",
 "name" : "Law Rare Stacks",
 "code" : "TEU/TEU/LAW/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "eed4bf5a-d1f6-4674-83f7-7ffde7a9b6fb",
 "name" : "Law Special Collections - Rawle - 1A",
 "code" : "TEU/TEU/LAW/rawle",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "987376e4-d326-47ca-af57-eb251d027a6d",
 "name" : "Law Special Collections - Rawle Room",
 "code" : "TEU/TEU/LAW/rawle3",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "10be5aff-ab25-4db1-8e96-a9d41e8f2f7d",
 "name" : "Law Reference",
 "code" : "TEU/TEU/LAW/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "dacaff15-4f92-45e4-ac55-b125c10ba822",
 "name" : "Law Reserves",
 "code" : "TEU/TEU/LAW/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "34b41444-af38-41d1-abc8-2ee21d60af26",
 "name" : "Law Serials",
 "code" : "TEU/TEU/LAW/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6ca139c5-8bde-4c26-99be-69be5f79f743",
 "name" : "Law Special Collections - International - 1A",
 "code" : "TEU/TEU/LAW/specintl",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "e90f2a00-8b42-4340-b38e-187bcedc0621",
 "name" : "Law Special Collections - Pennsylvania - 1A",
 "code" : "TEU/TEU/LAW/specpa",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fc888dce-7974-4762-b373-f8ef35039712",
 "name" : "Law Stacks",
 "code" : "TEU/TEU/LAW/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "3718680f-aa78-40d0-a267-8f637886bc00",
 "name" : "Law Special Collections - English Trials - 1A",
 "code" : "TEU/TEU/LAW/trials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "8835b1ea-399d-49cc-bda7-13554790f474",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "23587ba4-9990-4903-b88f-6b7636ebf166",
 "name" : "Charles Library",
 "code" : "MAIN",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "ba26466e-95c5-4931-b055-98d0396ff10f",
 "name" : "Main Hirsch Juvenile",
 "code" : "TEU/TEU/MAIN/hirsch",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f66c87e4-b27e-4d1e-909e-2d4d486ecc2f",
 "name" : "Main Juvenile",
 "code" : "TEU/TEU/MAIN/juvenile",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a54bd0b4-38f3-4cbe-a53e-c5572b72ad22",
 "name" : "Main Leisure",
 "code" : "TEU/TEU/MAIN/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "9592fc29-37fb-438e-9ca8-7d585e5e82e3",
 "name" : "Main Media Reserves",
 "code" : "TEU/TEU/MAIN/m_reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "29f88690-7cb9-4894-98e1-5ababf3e2b8a",
 "name" : "Main New Books",
 "code" : "TEU/TEU/MAIN/newbooks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "19081061-eb1f-4a4a-b570-e15d5c9179c8",
 "name" : "Main Reference",
 "code" : "TEU/TEU/MAIN/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "7242cbe8-51db-4960-b0cd-804856d273af",
 "name" : "Main Reserves",
 "code" : "TEU/TEU/MAIN/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "66afe9ad-5db4-4a72-bdbc-c1281b5e0f5a",
 "name" : "Main Current Periodicals",
 "code" : "TEU/TEU/MAIN/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "2b3a68d6-d8b8-4a91-a8df-3338bc029ab9",
 "name" : "Main Service Desk",
 "code" : "TEU/TEU/MAIN/servicedsk",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "26e0bca0-65c3-4164-95c8-3a34788dbbbd",
 "name" : "Main Stacks",
 "code" : "TEU/TEU/MAIN/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "8df0b46c-7233-49e9-9575-3dc8c8c8772d",
 "name" : "Main Storage",
 "code" : "TEU/TEU/MAIN/storage",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d449059a-b306-4205-9b00-e579b259570f",
 "name" : "Main Technical Services",
 "code" : "TEU/TEU/MAIN/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "23587ba4-9990-4903-b88f-6b7636ebf166",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "name" : "Podiatry Library",
 "code" : "PODIATRY",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "65b9a2ad-c69c-4c5b-9ee2-65b879e56a72",
 "name" : "Podiatry Internal Reference",
 "code" : "TEU/TEU/PODIATRY/intref",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "42e04209-bb1c-4d6b-80cf-4b14536b0e65",
 "name" : "Podiatry Leisure",
 "code" : "TEU/TEU/PODIATRY/leisure",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "691b4339-80d4-427e-9320-3b23359a4b03",
 "name" : "Podiatry Media",
 "code" : "TEU/TEU/PODIATRY/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "043641d9-dfd2-4efc-9801-fc74bbd28735",
 "name" : "Podiatry Reference",
 "code" : "TEU/TEU/PODIATRY/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c399f199-89ee-4ac4-b20f-2020d51e8f81",
 "name" : "Podiatry Reserves",
 "code" : "TEU/TEU/PODIATRY/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c3b423eb-5899-405d-a0cd-dfa327de0f75",
 "name" : "Podiatry Serials",
 "code" : "TEU/TEU/PODIATRY/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "911b0f8f-0192-4772-b530-a63ee21848e0",
 "name" : "Podiatry Stacks",
 "code" : "TEU/TEU/PODIATRY/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "083f2a86-c7f3-414b-9a4a-8c91bb6abc73",
 "name" : "Podiatry Technical Services",
 "code" : "TEU/TEU/PODIATRY/techserv",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "0b3bec49-a3bd-49dd-a233-00b7535ca7f3",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "name" : "Presser Listening Library",
 "code" : "PRESSER",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6dd970eb-3aa4-48a0-9be2-95c76043cadd",
 "name" : "Presser Listening Library",
 "code" : "TEU/TEU/PRESSER/plc",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "56adba42-e5db-4a43-8199-918e8acaaf75",
 "name" : "Presser Library",
 "code" : "TEU/TEU/PRESSER/presser",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d6dbd4fd-b2a2-4473-b366-984085669d6a",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "name" : "Rome Campus Library",
 "code" : "ROME",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "239d242f-6a50-4b03-9609-b5e59a9cad0b",
 "name" : "Rome Exhibits",
 "code" : "TEU/TEU/ROME/exhibit",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "21b44873-879e-4f6f-9f10-b858a6a081de",
 "name" : "Rome Fiction",
 "code" : "TEU/TEU/ROME/fiction",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c7491056-7ad4-4ffb-824d-18c5279be8b6",
 "name" : "Rome Media",
 "code" : "TEU/TEU/ROME/media",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "334c1006-1f62-407f-bdbc-1aeb81b43448",
 "name" : "Rome Oversize",
 "code" : "TEU/TEU/ROME/oversize",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "294325af-ade4-4696-8f46-0d5af99c3aa6",
 "name" : "Rome Reference",
 "code" : "TEU/TEU/ROME/reference",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "48af1fc8-0fc2-4815-b45d-293c0d556516",
 "name" : "Rome Reserves",
 "code" : "TEU/TEU/ROME/reserve",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d0ac810a-cf5d-4db9-b90c-0987bffb2456",
 "name" : "Rome Serials",
 "code" : "TEU/TEU/ROME/serials",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "38d66a15-7b49-44aa-8b5b-c37827f881f0",
 "name" : "Rome Stacks",
 "code" : "TEU/TEU/ROME/stacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "d407cdd3-f1b2-4ee1-b77b-64b38a2dc849",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "1ee02844-1840-4477-b414-6ad7987f538d",
 "name" : "Special Collections Research Center",
 "code" : "SCRC",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "07a5c264-2c20-44f8-94dc-d665cae54f07",
 "name" : "SCRC Rare Stacks",
 "code" : "TEU/TEU/SCRC/rarestacks",
 "isActive": true, "institutionId" : "05770b43-8f13-41e3-9ffd-8c13ae570d18",
 "campusId" : "e4cb3320-adba-4412-98fe-1f8576ec50db",
 "libraryId" : "1ee02844-1840-4477-b414-6ad7987f538d",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

