banner=" This will populate the material types reference table with shared index material types"

. $1

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "e65ed344-a691-4f8f-8446-3c0a346c6882",
        "name": "BKS - Books",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "191da404-dec2-4977-9770-1443d9d6c238",
        "name": "CNR - Continuing Resources",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "22cb5b81-2056-46ed-8050-c5d8f01caf90",
        "name": "COM - Computer Files",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "9f2c8d85-97e6-4722-a67c-bb51ccfb7781",
        "name": "MAP - Maps",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "bdfc300b-8a03-4ae6-b42a-6243afa0b7b1",
        "name": "MIX - Mixed Materials",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "d8dc9046-a9f4-4789-adf5-678fd855b016",
        "name": "REC - Sound Recordings",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "e5578a7e-49b9-4859-a86a-21b812215b4f",
        "name": "SCO - Scores",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types


curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "14f1845d-2fad-4091-80c8-48614eaea40b",
        "name": "VIS - Visual Materials",
        "source": "RESHARE (OCLC)"
    }' \
    $protocol://$host/material-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "04858422-c46f-4041-94fc-f5c5a6b98319",
        "name": "Other",
        "source": "RESHARE"
    }' \
    $protocol://$host/material-types

curl -w '\n' -X POST -D - \
  -H "Content-type: application/json" \
  -H "X-Okapi-Tenant: $tenant" \
  -H "X-Okapi-Token: $token" \
  -d '{
        "id": "f6dd0721-5d4a-439e-9205-c71aef39d15b",
        "name": "Unmapped",
        "source": "RESHARE"
    }' \
    $protocol://$host/material-types


