tenant=$1
username=$2
password=$3
protocol=$4
host=$5

token=$(../util/get-token.sh  $tenant $username $password $protocol $host)

curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/item-storage/items
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/holdings-storage/holdings
curl -H "X-Okapi-Tenant: $tenant" -H "X-Okapi-Token: $token" -X DELETE $protocol://$host/instance-storage/instances
