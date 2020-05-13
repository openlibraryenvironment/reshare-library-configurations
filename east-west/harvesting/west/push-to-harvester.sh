protocol=http
host=localhost:8080
baseUrl=$protocol://$host/harvester/records
storageUrl=$baseUrl/storages
transformationUrl=$baseUrl/transformations
stepUrl=$baseUrl/steps
tsasUrl=$baseUrl/tsas
harvestableUrl=$baseUrl/harvestables
transformationId=201202


for pipelinepost in `ls *transformation*post.xml` 
do
   echo POSTing $pipelinepost to $transformationUrl
   curl -H "Content-Type: application/xml" -d @$pipelinepost $transformationUrl
done

for step in `ls *step*.xml`
do
  echo "POST step $step to $stepUrl"
  curl -H "Content-Type: application/xml" -d @$step $stepUrl
done

curl -H "Content-Type: application/xml" $stepUrl

for tsas in `ls *tsas*.xml`
do
  echo "POSTing association $tsas to $tsasUrl"
  curl -H "Content-Type: application/xml" -d @$tsas $tsasUrl
done

for pipelineput in `ls *transformation*put.xml`
do
   echo "PUTing transformation pipeline $pipelineput to $transformationUrl/$transformationId/"
   curl -X PUT -H "Content-Type: application/xml" -d @$pipelineput $transformationUrl/$transformationId/
done

for harvestable in `ls *harvestable*.xml`
do
  echo "POSTing harvest job $harvestable to $harvestableUrl"
  curl -H "Content-Type: application/xml" -d @$harvestable $harvestableUrl
done
