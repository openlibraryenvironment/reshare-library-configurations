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

for dir in shared east west
do
    echo
    echo "=== Looking for harvester configuration files in '$dir/'"
    echo
    cd $dir
    if ls storage*.xml 1>/dev/null 2>&1; then
        for storage in `ls storage*.xml`
        do
        echo POSTing $storage to $storageUrl
        curl -H "Content-Type: application/xml" -d @$storage $storageUrl
        done
    else
        echo "No storage configs in '$dir/'"
    fi

    if ls step*.xml 1>/dev/null 2>&1; then
    for step in `ls step*.xml`
    do
       echo POSTing step $step to $stepUrl
       curl -H "Content-Type: application/xml" -d @$step $stepUrl
    done
    else
        echo "No step configs in '$dir/'"
    fi

    if ls transformation*post.xml 1>/dev/null 2>&1; then
    for pipelinepost in `ls transformation*post.xml`
    do
        echo POSTing $pipelinepost to $transformationUrl
        curl -H "Content-Type: application/xml" -d @$pipelinepost $transformationUrl
    done
    else
        echo "No transformation config to POST in '$dir/'"
    fi

    curl -s -H "Content-Type: application/xml" $stepUrl 1>/dev/null

    if ls tsas*.xml 1>/dev/null 2>&1; then
    for tsas in `ls tsas*.xml`
    do
      echo POSTing association $tsas to $tsasUrl
      curl -H "Content-Type: application/xml" -d @$tsas $tsasUrl
    done
    else
      echo "No step associations in '$dir/'"
    fi

    if ls transformation*put.xml 1>/dev/null 2>&1; then
    for pipelineput in `ls transformation*put.xml`
    do
      echo PUTing transformation pipeline $pipelineput to $transformationUrl/$transformationId/
      curl -X PUT -H "Content-Type: application/xml" -d @$pipelineput $transformationUrl/$transformationId/
    done
    else
      echo "No transformation config to put in '$dir/'"
    fi

    if ls harvestable*.xml 1>/dev/null 2>&1; then
    for harvestable in `ls harvestable*.xml`
    do
      echo POSTing harvest job $harvestable to $harvestableUrl
      curl -H "Content-Type: application/xml" -d @$harvestable $harvestableUrl
    done
    else
      echo "No harvest job configs in '$dir/'"
    fi
    cd ..
done
