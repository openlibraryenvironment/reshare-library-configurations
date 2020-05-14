protocol=$1
host=$2

baseUrl=$protocol://$host/harvester/records
storageUrl=$baseUrl/storages
transformationUrl=$baseUrl/transformations
stepUrl=$baseUrl/steps
tsasUrl=$baseUrl/tsas
harvestableUrl=$baseUrl/harvestables

echo =============================================================
echo Pushing Harvester configurations from `pwd` to $host
echo =============================================================

if ls STORAGE*.xml 1>/dev/null 2>&1; then
for file in `ls STORAGE*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)  # get value of <id></id>
    if curl --output /dev/null --silent --fail $storageUrl/$id; then
      echo "STORAGE $id already exists. Skipping"
    else
      echo POSTing $file with id $id to $storageUrl
      curl -H "Content-Type: application/xml" -d @$file $storageUrl
    fi
done
else
    echo "No STORAGE* configs in '$dir/'"
fi

if ls STEP*.xml 1>/dev/null 2>&1; then
for file in `ls STEP*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    if curl --output /dev/null --silent --fail $stepUrl/$id; then
      echo "STEP $id already exists. Skipping"
    else
      echo POSTing step $file with id $id to $stepUrl
      curl -H "Content-Type: application/xml" -d @$file $stepUrl
    fi
done
else
    echo "No STEP* configs in '$dir/'"
fi

if ls TRANSFORMATION*POST*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*POST*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    if curl --output /dev/null --silent --fail $transformationUrl/$id; then
      echo "TRANSFORMATION $id already exists. Skipping"
    else
      echo POSTing $file with id $id to $transformationUrl
      curl -H "Content-Type: application/xml" -d @$file $transformationUrl
    fi
done
else
    echo "No TRANSFORMATION*POST configs to POST in '$dir/'"
fi

curl -s -H "Content-Type: application/xml" $stepUrl 1>/dev/null

if ls TSAS*.xml 1>/dev/null 2>&1; then
for file in `ls TSAS*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    if curl --output /dev/null --silent --fail $tsasUrl/$id; then
      echo "TSAS $id already exists. Skipping"
    else
      echo POSTing association $file with id $id to $tsasUrl
      curl -H "Content-Type: application/xml" -d @$file $tsasUrl
    fi
done
else
    echo "No step associations (TSAS* configs) to POST in '$dir/'"
fi

if ls TRANSFORMATION*PUT*.xml 1>/dev/null 2>&1; then
for file in `ls TRANSFORMATION*PUT*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    echo PUTing transformation pipeline $file to $transformationUrl/$id/
    curl -X PUT -H "Content-Type: application/xml" -d @$file $transformationUrl/$id/
done
else
    echo "No TRANSFORMATION*PUT configs to PUT in '$dir/'"
fi

if ls HARVESTABLE*.xml 1>/dev/null 2>&1; then
for file in `ls HARVESTABLE*.xml`
do
    id=$(grep -oPm1 "(?<=<id>)[^<]+" $file)
    if curl --output /dev/null --silent --fail $harvestableUrl/$id; then
      echo "HARVESTABLE $id already exists. Skipping"
    else
      echo POSTing harvest job $file to $harvestableUrl
      curl -H "Content-Type: application/xml" -d @$file $harvestableUrl
    fi
done
else
    echo "No harvest job (HARVESTABLE* configs) to POST in '$dir/'"
fi
