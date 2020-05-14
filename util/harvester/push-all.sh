    if ls STORAGE*.xml 1>/dev/null 2>&1; then
        for storage in `ls STORAGE*.xml`
        do
        echo POSTing $storage to $storageUrl
        curl -H "Content-Type: application/xml" -d @$storage $storageUrl
        done
    else
        echo "No STORAGE* configs in '$dir/'"
    fi

    if ls STEP*.xml 1>/dev/null 2>&1; then
    for step in `ls STEP*.xml`
    do
       echo POSTing step $step to $stepUrl
       curl -H "Content-Type: application/xml" -d @$step $stepUrl
    done
    else
        echo "No STEP* configs in '$dir/'"
    fi

    if ls TRANSFORMATION*POST.xml 1>/dev/null 2>&1; then
    for pipelinepost in `ls TRANSFORMATION*POST.xml`
    do
        echo POSTing $pipelinepost to $transformationUrl
        curl -H "Content-Type: application/xml" -d @$pipelinepost $transformationUrl
    done
    else
        echo "No TRANSFORMATION*POST configs to POST in '$dir/'"
    fi

    curl -s -H "Content-Type: application/xml" $stepUrl 1>/dev/null

    if ls TSAS*.xml 1>/dev/null 2>&1; then
    for tsas in `ls TSAS*.xml`
    do
      echo POSTing association $tsas to $tsasUrl
      curl -H "Content-Type: application/xml" -d @$tsas $tsasUrl
    done
    else
      echo "No step associations (TSAS* configs) to POST in '$dir/'"
    fi

    if ls TRANSFORMATION*PUT.xml 1>/dev/null 2>&1; then
    for pipelineput in `ls TRANSFORMATION*PUT.xml`
    do
      echo PUTing transformation pipeline $pipelineput to $transformationUrl/$transformationId/
      curl -X PUT -H "Content-Type: application/xml" -d @$pipelineput $transformationUrl/$transformationId/
    done
    else
      echo "No TRANSFORMATION*PUT configs to PUT in '$dir/'"
    fi

    if ls HARVESTABLE*.xml 1>/dev/null 2>&1; then
    for harvestable in `ls HARVESTABLE*.xml`
    do
      echo POSTing harvest job $harvestable to $harvestableUrl
      curl -H "Content-Type: application/xml" -d @$harvestable $harvestableUrl
    done
    else
      echo "No harvest job (HARVESTABLE* configs) to POST in '$dir/'"
    fi
