echo ========================================
echo Configure Inventory storage
echo ========================================
curl -H "Content-Type: application/xml"  -d @201101-storage-localhost.xml http://localhost:8080/harvester/records/storages
