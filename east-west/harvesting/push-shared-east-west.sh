protocol=http
host=$1
transformationId=201202

if [ -z $host ]; then
  echo
  echo " Please provide Harvester host to push config to, for example:  ./push-to-harvester.sh localhost:8080"
  echo
  exit 1
fi

cd "$(dirname "$0")"

for dir in shared east west
do
    echo
    echo "=== Looking for harvester configuration files in '$dir/'"
    echo
    cd $dir
    ../../../util/harvester/push-all.sh $protocol $host
    cd ..
done

echo Done `date`
