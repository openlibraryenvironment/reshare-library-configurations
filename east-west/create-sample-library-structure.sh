. $1 # script setting tenant and host variables
username=$2
password=$3

token=$(../util/get-token.sh $tenant $username $password $protocol $host)

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{ 
        "id": "6dab32a8-8c12-441c-ac5e-b2f12be8eb8d",
        "name": "West University",
        "code": "WI"
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
        "code": "WI/WC/WL/L",
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
        "code": "EI"
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
        "code": "EI/EC/EL/L",
        "isActive": true,
        "institutionId": "542f8cbc-ed9c-45f6-af4e-0bb5c8f24f67",
        "campusId": "0f1c2f1f-6da4-4e7e-948c-c396ac57e237",
        "libraryId": "43364fab-1c38-42ff-aa28-68660f459ef0",
        "primaryServicePoint": "3a40852d-49fd-4df2-a1f9-6e2641a6e91f",
        "servicePointIds": [ "3a40852d-49fd-4df2-a1f9-6e2641a6e91f" ]
    }' \
    $protocol://$host/locations

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "47a65482-f104-45e8-aead-1f12d70dcf32",
        "name": "RESHARE:US-east",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "9db07825-8035-4d9a-8a41-d59a5f1c337b",
        "name": "RESHARE:US-west",
        "source": "RESHARE"
    }' \
    $protocol://$host/identifier-types


