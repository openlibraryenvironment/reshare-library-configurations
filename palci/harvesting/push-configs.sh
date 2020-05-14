protocol=http
dir=$1
host=$2

if [ -z $host ]; then
  echo
  echo " Please provide directory to push from and Harvester host to push config to, for example:  ./push-configs.sh temple localhost:8080"
  echo
  exit 1
fi

if [ ! -d "$dir" ]; then
  echo
  echo " Cannot find configuration files directory '$dir'. Exiting."
  echo 
  exit 1
fi

cd shared
../../../util/harvester/push-all.sh $protocol $host 
cd ..

cd $dir
../../../util/harvester/push-all.sh $protocol $host
