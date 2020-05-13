protocol=http
host=localhost:8080
baseUrl=$protocol://$host/harvester/records
storageUrl=$baseUrl/storages
transformationUrl=$baseUrl/transformations
stepUrl=$baseUrl/steps
tsasUrl=$baseUrl/tsas
harvestableUrl=$baseUrl/harvestables

echo ========================================
echo Configure East
echo ========================================

echo ============ Pipeline
curl -H "Content-Type: application/xml"  -d @201201-transformation-east.xml $transformationUrl

echo ============ Step: library codes
curl -H "Content-Type: application/xml"  -d @201301-step-library-codes-east.xml $stepUrl

echo Load steps to JPA memory (or assigning them will break them)
curl -H "Content-Type: application/xml" $stepUrl

echo ============ Assign steps to pipeline
echo == 201401
curl -H "Content-Type: application/xml"  -d @201401-tsas-201201-4004-east.xml $tsasUrl
echo == 201402
curl -H "Content-Type: application/xml"  -d @201402-tsas-201201-4005-east.xml $tsasUrl
echo == 201403
curl -H "Content-Type: application/xml"  -d @201403-tsas-201201-201301-east.xml $tsasUrl
echo == 201404
curl -H "Content-Type: application/xml"  -d @201404-tsas-201201-4003-east.xml $tsasUrl

echo == Re-persist step associations through the pipeline object (or they will not stick)
curl -X PUT -H "Content-Type: application/xml"  -d @201201-transformation-east-2nd.xml $transformationUrl/201201/

echo ============= Create harvest job
curl -H "Content-Type: application/xml"  -d @201501-harvestable-demo-east-to-201101.xml $harvestableUrl

echo Done `date`