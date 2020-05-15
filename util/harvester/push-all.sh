host=$1
creds=$2

baseUrl=$host/harvester/records
storageUrl=$baseUrl/storages
transformationUrl=$baseUrl/transformations
stepUrl=$baseUrl/steps
tsasUrl=$baseUrl/tsas
harvestableUrl=$baseUrl/harvestables

SCRIPTDIR=$(dirname "$0")

echo =============================================================
echo Pushing Harvester configurations from `pwd` to $host
echo =============================================================

if ls STORAGE*.xml 1>/dev/null 2>&1; then
for file in `ls STORAGE*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $storageUrl STORAGE $creds
done
else
    echo "No STORAGE* configs in '`pwd`'"
fi

if ls STEP*.xml 1>/dev/null 2>&1; then
for file in `ls STEP*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $stepUrl STEP $creds
done
else
    echo "No STEP* configs in '`pwd`'"
fi

if ls TRANSFORMATION*POST*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*POST*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $transformationUrl TRANSFORMATION $creds
done
else
    echo "No TRANSFORMATION*POST configs to POST in '`pwd`'"
fi

curl -s -H "Content-Type: application/xml" $stepUrl -u $creds 1>/dev/null

if ls TSAS*.xml 1>/dev/null 2>&1; then
for file in `ls TSAS*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $tsasUrl TSAS $creds
done
else
    echo "No step associations (TSAS* configs) to POST in '`pwd`'"
fi

if ls TRANSFORMATION*PUT*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*PUT*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    echo PUTing transformation pipeline $file to $transformationUrl/$id/
    curl -X PUT -H "Content-Type: application/xml" -d @$file $transformationUrl/$id/ -u $creds
done
else
    echo "No TRANSFORMATION*PUT configs to PUT in '`pwd`'"
fi

if ls HARVESTABLE*.xml 1>/dev/null 2>&1; then
for file in `ls HARVESTABLE*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $harvestableUrl HARVESTABLE $creds
done
else
    echo "No harvest job (HARVESTABLE* configs) to POST in '`pwd`'"
fi

echo "push-all DONE ... `date`"