. $1 # script setting tenant and host variables
username=$2
password=$3

../shared/delete-folio-sample-locations.sh $tenant $username $password $protocol $host
