host=$1
username=$2

if [ -z $host ]; then
  echo
  echo " Please provide Harvester host to push config to, for example:  ./push-to-harvester.sh http://localhost:8080"
  echo
  exit 1
fi

if [-n "$username" ]; then
. ../../util/harvester/login.sh
fi

cd "$(dirname "$0")"

for dir in shared east west
do
    echo
    echo "=== Looking for harvester configuration files in '$dir/'"
    echo
    cd $dir
    ../../../util/harvester/push-all.sh $host $creds
    cd ..
done

echo Done `date`
