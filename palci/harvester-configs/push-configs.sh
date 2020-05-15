banner=" This will attempt to push configuration files in directory '$1'"

dir=$1
host=$2
username=$3

if [ -z $username ]; then
 creds="noop:noop"
else
. ../../util/harvester/login.sh
fi


if [ -z $host ]; then
  echo
  echo " Usage:  ./push-configs.sh config-dir harvester-host [harvester username]"
  echo
  echo " Examples:"
  echo "           ./push-configs.sh millersville http://localhost:8080"
  echo
  echo "           ./push-configs.sh temple https://harvester-dev.indexdata.com harvester_admin"
  exit 1
fi

if [ ! -d "$dir" ]; then
  echo
  echo " Cannot find configuration files directory '$dir'. Exiting."
  echo
  exit 1
fi

cd shared
../../../util/harvester/push-all.sh $host $creds
cd ..

cd $dir
../../../util/harvester/push-all.sh $host $creds
