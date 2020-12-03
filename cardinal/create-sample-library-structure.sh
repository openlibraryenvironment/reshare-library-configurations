banner=" This will attempt to create locations hierarchies and record identifier types for imaginary libraries East, West, North, South"

. $1 # the script setting tenant, username, host and auth

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "6dab32a8-8c12-441c-ac5e-b2f12be8eb8d",
        "name": "West University",
        "code": "US-WEST"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "57953bb9-0541-4190-a9de-abf200317f5c",
        "name": "West Campus",
        "code": "WC",
        "institutionId": "6dab32a8-8c12-441c-ac5e-b2f12be8eb8d"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "b9f519c5-c97c-4c7b-9e42-bc239473370f",
        "name": "West Library",
        "code": "WL",
        "campusId": "57953bb9-0541-4190-a9de-abf200317f5c"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "d05b8941-a7b3-4519-b450-06d72ca13a0c",
        "name": "West",
        "code": "US-WEST/WC/WL/WLS",
        "isActive": true,
        "institutionId": "6dab32a8-8c12-441c-ac5e-b2f12be8eb8d",
        "campusId": "57953bb9-0541-4190-a9de-abf200317f5c",
        "libraryId": "b9f519c5-c97c-4c7b-9e42-bc239473370f",
        "primaryServicePoint": "3a40852d-49fd-4df2-a1f9-6e2641a6e91f",
        "servicePointIds": [ "3a40852d-49fd-4df2-a1f9-6e2641a6e91f" ]
    }' \
    $protocol://$host/locations

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "542f8cbc-ed9c-45f6-af4e-0bb5c8f24f67",
        "name": "East University",
        "code": "US-EAST"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "0f1c2f1f-6da4-4e7e-948c-c396ac57e237",
        "name": "East Campus",
        "code": "EC",
        "institutionId": "542f8cbc-ed9c-45f6-af4e-0bb5c8f24f67"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "43364fab-1c38-42ff-aa28-68660f459ef0",
        "name": "East Library",
        "code": "EL",
        "campusId": "0f1c2f1f-6da4-4e7e-948c-c396ac57e237"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "81582666-305d-4c8e-82cc-061fd00e9c42",
        "name": "East",
        "code": "US-EAST/EC/EL/ELS",
        "isActive": true,
        "institutionId": "542f8cbc-ed9c-45f6-af4e-0bb5c8f24f67",
        "campusId": "0f1c2f1f-6da4-4e7e-948c-c396ac57e237",
        "libraryId": "43364fab-1c38-42ff-aa28-68660f459ef0",
        "primaryServicePoint": "3a40852d-49fd-4df2-a1f9-6e2641a6e91f",
        "servicePointIds": [ "3a40852d-49fd-4df2-a1f9-6e2641a6e91f" ]
    }' \
    $protocol://$host/locations

# North

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "9c302a00-a487-4fd9-b3a5-49608aab64f0",
        "name": "North University",
        "code": "US-NORTH"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "8613ac92-cdf6-4a63-b37d-8eb27e74b76d",
        "name": "North Campus",
        "code": "NC",
        "institutionId": "9c302a00-a487-4fd9-b3a5-49608aab64f0"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "48b3dc06-8ca5-4f70-8a76-138c0a16b91e",
        "name": "North Library",
        "code": "NL",
        "campusId": "8613ac92-cdf6-4a63-b37d-8eb27e74b76d"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "d18e4102-9755-405c-886a-3cfe58ed78ea",
        "name": "North",
        "code": "US-NORTH/NC/NL/NLS",
        "isActive": true,
        "institutionId": "9c302a00-a487-4fd9-b3a5-49608aab64f0",
        "campusId": "8613ac92-cdf6-4a63-b37d-8eb27e74b76d",
        "libraryId": "48b3dc06-8ca5-4f70-8a76-138c0a16b91e",
        "primaryServicePoint": "3a40852d-49fd-4df2-a1f9-6e2641a6e91f",
        "servicePointIds": [ "3a40852d-49fd-4df2-a1f9-6e2641a6e91f" ]
    }' \
    $protocol://$host/locations

# South
curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "1e8b106b-ffd5-4596-b094-cc1e0db33c07",
        "name": "South University",
        "code": "US-SOUTH"
     }' \
  $protocol://$host/location-units/institutions

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "1ac14727-8e5b-4355-a56d-bb1944c881c8",
        "name": "South Campus",
        "code": "SC",
        "institutionId": "1e8b106b-ffd5-4596-b094-cc1e0db33c07"
     }' \
  $protocol://$host/location-units/campuses

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "42e65d91-a525-4806-b51c-000e8231bed4",
        "name": "South Library",
        "code": "SL",
        "campusId": "1ac14727-8e5b-4355-a56d-bb1944c881c8"
     }' \
  $protocol://$host/location-units/libraries

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "502c835e-8299-42b4-a736-28985f47baaa",
        "name": "South",
        "code": "US-SOUTH/SC/SL/SLS",
        "isActive": true,
        "institutionId": "1e8b106b-ffd5-4596-b094-cc1e0db33c07",
        "campusId": "1ac14727-8e5b-4355-a56d-bb1944c881c8",
        "libraryId": "42e65d91-a525-4806-b51c-000e8231bed4",
        "primaryServicePoint": "3a40852d-49fd-4df2-a1f9-6e2641a6e91f",
        "servicePointIds": [ "3a40852d-49fd-4df2-a1f9-6e2641a6e91f" ]
    }' \
    $protocol://$host/locations

# Record identifier types for East, West, North, South

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "47a65482-f104-45e8-aead-1f12d70dcf32",
        "name": "RESHARE:US-EAST",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "9db07825-8035-4d9a-8a41-d59a5f1c337b",
        "name": "RESHARE:US-WEST",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "2fe92613-245e-4a4c-9559-e667738c33e7",
        "name": "RESHARE:US-NORTH",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "6208e5fe-804d-4580-8b35-f912fd159a9e",
        "name": "RESHARE:US-SOUTH",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

echo
