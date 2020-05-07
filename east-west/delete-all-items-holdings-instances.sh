banner="  WARNING - this will attempt to wipe out ALL instances, holdings and items at the target Inventory"
. $1  # script setting tenant and host variables

../delete-folio-sample-locations/delete-all-items-holdings-instances.sh $tenant $token $protocol $host
