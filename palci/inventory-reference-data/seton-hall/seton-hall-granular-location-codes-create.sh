banner=" This will create a granular locations hierarchy for Seton Hall"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "b4d96d6d-92f4-414a-a058-e91ef8e8ea07",
        "name": "ReShare_US-NJSOOS",
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
        "code": "US-NJSOOS",
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
        "code": "US-NJSOOS"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
        "name": "Seton Hall",
        "code": "US-NJSOOS",
        "institutionId": "01355129-8c25-4f81-aa72-d424e00cbe67"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "name" : "Walsh Library",
 "code" : "STHM",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee"
}' \
$protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "f29e2419-2373-48de-85a8-78b87ba865bc",
        "name": "Seton Hall - Unmapped location",
        "code": "US-NJSOOS/US-NJSOOS/STHM/STHM",
        "isActive": true,
        "institutionId": "01355129-8c25-4f81-aa72-d424e00cbe67",
        "campusId": "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
        "libraryId": "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
        "primaryServicePoint": "1369a65f-ac15-4e20-b241-4af827732552",
        "servicePointIds": [ "1369a65f-ac15-4e20-b241-4af827732552" ]
    }' \
    $protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "c6f27c9b-22fe-4ff3-bf24-96242fb93c80",
 "name" : "Seton Hall - Walsh Library - Apabi Chinese Ebooks",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L01",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "35109dfd-f179-4acf-a4f8-d6c3cb3c0ce0",
 "name" : "Seton Hall - Walsh Library - Asian Collection",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L02",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b90a5b70-7fd9-4d3f-98af-295d2305b6a2",
 "name" : "Seton Hall - Walsh Library - Ask staff for assistance - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L03",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "db652038-6f79-4b9f-ae59-debd934f4a87",
 "name" : "Seton Hall - Walsh Library - Chinese Corner (2nd floor)",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L04",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "efa4f1b1-b884-4694-b37b-bf1e8d0394e9",
 "name" : "Seton Hall - Walsh Library - Circulation Desk",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L05",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "b062cf71-30d8-4728-94f1-59f3eaab8463",
 "name" : "Seton Hall - Walsh Library - Circulation Desk CDs",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L06",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "419b2b9f-f9f1-4581-9b7e-b090e0d0015b",
 "name" : "Seton Hall - Walsh Library - Circulation Desk DVD/Video",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L07",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "0a93b855-0878-4774-a898-1515db568482",
 "name" : "Seton Hall - Walsh Library - Circulation Desk OOMF",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L08",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "01ffad89-5ab2-4a67-bc9d-8dcce1919c27",
 "name" : "Seton Hall - Walsh Library - Curriculum Library",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L09",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a3244fdd-59f1-4720-ad2c-fd7a07e4d2bd",
 "name" : "Seton Hall - Walsh Library - Dean'\''s Office",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L10",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "abce9b81-6909-4426-8985-e5467c880ca1",
 "name" : "Seton Hall - Walsh Library - Doctoral Dissertation",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L11",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "eaf93ed8-85f4-4b8a-a9a6-e61a76127f5c",
 "name" : "Seton Hall - Walsh Library - EReserves",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L12",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "933e52d3-3aa0-4a4a-a7ac-3715abfd0b15",
 "name" : "Seton Hall - Walsh Library - Lonergan Library- IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L13",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "2c715e7f-c377-4872-a0cd-bc4879e16ff3",
 "name" : "Seton Hall - Walsh Library - Main Collection",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L14",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "baeca93d-b5de-4209-aef6-eb1b837e3f96",
 "name" : "Seton Hall - Walsh Library - Main Collection - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L15",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "106f20dd-2528-4268-a443-bd9e229244cd",
 "name" : "Seton Hall - Walsh Library - Main Collection Oversize",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L16",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "bd16d10a-ebbd-476f-9b72-74baba7e484c",
 "name" : "Seton Hall - Walsh Library - Main Collection Oversize Plus",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L17",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "a42366c6-30ad-496f-84ea-9411745320a6",
 "name" : "Seton Hall - Walsh Library - Main Reserves - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L18",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "081ad756-bfeb-4ff9-ada3-c1596053e099",
 "name" : "Seton Hall - Walsh Library - Master'\''s Thesis",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L19",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "f9f46854-b5b7-4045-9121-4d668671a509",
 "name" : "Seton Hall - Walsh Library - Microform Collection - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L20",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "d3101124-a61e-4a5d-a418-e4d6b75b6d80",
 "name" : "Seton Hall - Walsh Library - New Books",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L21",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "076133f7-54bf-4b34-8a13-3e0b71453a6e",
 "name" : "Seton Hall - Walsh Library - Periodicals - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L22",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "359e8b82-dadc-44eb-bd54-fa62b91719bc",
 "name" : "Seton Hall - Walsh Library - Reference Collection - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L23",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "642f59cd-ddab-4f8a-a37d-84acb8c076a9",
 "name" : "Seton Hall - Walsh Library - Reference Desk - IN-LIBRARY USE ONLY",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L24",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "265e570d-0c4d-4aff-9736-273bdaad9c79",
 "name" : "Seton Hall - Walsh Library - Repair",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L25",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "fbaf4db3-3be5-48ef-a36c-fcebaab6a9a5",
 "name" : "Seton Hall - Walsh Library - UN Documents",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L26",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "271a7b59-9870-4133-aaf8-618b57a60c8f",
 "name" : "Seton Hall - Walsh Library - Valente Library",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L27",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations

curl -w '\n' -X POST -D - -H "Content-type: application/json" -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" \
-d '{
 "id": "48925f9d-7ada-41a5-820a-a8f0a574994a",
 "name" : "Seton Hall - Walsh Library - Valente Library Oversize",
 "code" : "US-NJSOOS/US-NJSOOS/STHM/L28",
 "isActive": true, "institutionId" : "01355129-8c25-4f81-aa72-d424e00cbe67",
 "campusId" : "b1b284b5-9e3e-4cdf-a83e-478271f404ee",
 "libraryId" : "6cc2ecaf-f2cf-43f3-82f6-b9c71738e349",
 "primaryServicePoint": "efb9addf-caf4-4052-bb17-135cb4aa0594",
 "servicePointIds": [ "efb9addf-caf4-4052-bb17-135cb4aa0594" ]
}' \
$protocol://$host/locations
