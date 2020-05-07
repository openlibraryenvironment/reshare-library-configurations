tenant=$1
token=$2
protocol=$3
host=$4

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/item-storage/items
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/holdings-storage/holdings
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/instance-storage/instances
