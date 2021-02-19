host=$1
creds=$2
targetFolio=$3

if [ -z $creds ]; then
  creds="ignore:ignore"
fi

if [ -z $targetFolio ]; then
  echo Posting Harvester configurations for harvesting to development FOLIOs
  targetFolio="dev"
else
  echo Posting Harvester configurations for harvesting to $targetFolio only
fi

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

if [ $targetFolio = dev ]
then
    echo Posting development FOLIOs storage configurations
    if ls STORAGE*.xml 1>/dev/null 2>&1; then
    for file in `ls STORAGE*.xml`
    do
        $SCRIPTDIR/push-config-if-not-exists.sh $file $storageUrl $creds STORAGE
    done
    else
        echo "No STORAGE* configs in '`pwd`'"
    fi
else
    echo "Posting storage configuration(s) for $targetFolio only"
    if ls $targetFolio/STORAGE*.xml 1>/dev/null 2>&1; then
    for file in `ls $targetFolio/STORAGE*.xml`
    do
        $SCRIPTDIR/push-config-if-not-exists.sh $file $storageUrl $creds STORAGE
    done
    else
        echo "No STORAGE* configs in '`pwd`'"
    fi
fi

if ls STEP*.xml 1>/dev/null 2>&1; then
for file in `ls STEP*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $stepUrl $creds STEP
done
else
    echo "No STEP* configs in '`pwd`'"
fi

if ls TRANSFORMATION*POST*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*POST*.xml`
do
    $SCRIPTDIR/push-config-if-not-exists.sh $file $transformationUrl $creds TRANSFORMATION
done
else
    echo "No TRANSFORMATION*POST configs to POST in '`pwd`'"
fi

curl -s -H "Content-Type: application/xml" $stepUrl -u $creds 1>/dev/null

if ls TRANSFORMATION*PUT*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*PUT*.xml`
do
    id=$(grep -oEm 1 '<id>[^<]+' $file | grep -oE '[0-9]+')  # get value of <id></id>
    echo PUTing transformation pipeline $file to $transformationUrl/$id/
    curl -X PUT -H "Content-Type: application/xml" -d @$file $transformationUrl/$id/ -u $creds
done
else
    echo "No TRANSFORMATION*PUT configs to PUT in '`pwd`'"
fi

if [ $targetFolio = dev ]
then
    echo Posting Harvestables for development FOLIOs
    if ls HARVESTABLE*.xml 1>/dev/null 2>&1; then
    for file in `ls HARVESTABLE*.xml`
    do
        $SCRIPTDIR/push-config-if-not-exists.sh $file $harvestableUrl $creds HARVESTABLE
    done
    else
        echo "No harvest job (HARVESTABLE* configs) to POST in '`pwd`'"
    fi
else
    echo Posting Harvestables in $targetFolio
    if ls $targetFolio/HARVESTABLE*.xml 1>/dev/null 2>&1; then
    for file in `ls $targetFolio/HARVESTABLE*.xml`
    do
        $SCRIPTDIR/push-config-if-not-exists.sh $file $harvestableUrl $creds HARVESTABLE
    done
    else
        echo "No harvest job (HARVESTABLE* configs) to POST in '`pwd`'"
    fi
fi

echo "push-all DONE ... `date`"