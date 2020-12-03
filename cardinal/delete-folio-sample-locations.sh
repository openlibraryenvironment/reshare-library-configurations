banner=" This will attempt to delete all of FOLIO's default sample locations"

. $1 # script setting tenant and host variables

../delete-folio-sample-locations/delete-folio-sample-locations.sh $tenant $token $protocol $host

echo
