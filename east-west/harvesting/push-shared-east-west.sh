protocol=http
host=$1
baseUrl=$protocol://$host/harvester/records
storageUrl=$baseUrl/storages
transformationUrl=$baseUrl/transformations
stepUrl=$baseUrl/steps
tsasUrl=$baseUrl/tsas
harvestableUrl=$baseUrl/harvestables
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
    . ../../../util/harvester/push-all.sh
    cd ..
done

echo Done `date`
