banner=" This will attempt to push configuration files in directory '$1'"

dir=$1 # Pass in the config directory as first argument
targetFolio=$3  # If only Harvestables targeting a specific FOLIO address (ie production) should be populated to the Harvester

. $2   # pass in the Harvester host config scripts as second argument

if [ -z $username ]; then
 creds="noop:noop"
else
. ../../util/harvester/login.sh
fi


if [ -z $host ]; then
  echo
  echo " Usage:  ./push-configs.sh config-dir harvester-host-script"
  echo
  echo " Examples:"
  echo "           ./push-configs.sh millersville localhost8080.sh"
  echo
  echo "           ./push-configs.sh temple harvester.folio-dev-us-east-1-1.folio-dev.indexdata.com.sh"
  exit 1
fi

if [ ! -d "$dir" ]; then
  echo
  echo " Cannot find configuration files directory '$dir'. Exiting."
  echo
  exit 1
fi

cd shared
../../../util/harvester/push-all.sh $host $creds $targetFolio
cd ..

cd $dir
../../../util/harvester/push-all.sh $host $creds $targetFolio
