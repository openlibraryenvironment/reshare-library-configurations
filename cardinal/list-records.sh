banner="Listing records from [$2]"

. $1

curl $protocol://$host/$2?limit=999 -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"  
