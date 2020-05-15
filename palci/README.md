# PALCI setup: Populate FOLIO Inventory with location codes, configure the Harvester

Setting up a new FOLIO Inventory with library location structures and/or configuring the Harvester with configurations for populating the Inventory  can involve followin steps. The example assumes both the Harvester and FOLIO Inventory is running on localhost.

1) A new FOLIO install may have some sample locations installed already - to remove them do
    
     Go to folder `/delete-folio-sample-locations`
     
     Do 

     `./delete-folio-sample-locations.sh diku@localhost:9130.sh`

2) Install Millersville locations (granular structure in this example), Temple locations (granular) and Villanova locations

    Go to folder `/palci/inventory-reference-data/`
    
    Do

    `./millersville/millersville-granular-location-codes-create.sh diku@localhost\:9130.sh`
    
    `./temple/temple-granular-location-codes-create.sh diku@localhost\:9130.sh`
    
    `./villanova/villanova-location-codes-create.sh diku@localhost\:9130.sh`

2) Push configurations for the Harvest jobs to populate Inventory with instances, holdings and item for Millersville, Temple and Villanova

    Go to folder `/palci/harvester-config`

    Assuming the Harvester runs at `localhost:8080`, do

    `./push-configs.sh millersville localhost:8080`
    
    `./push-configs.sh temple localhost:8080`
    
    `./push-configs.sh villanova localhost:8080`

    Some of the configurations are shared (the FOLIO storage definition for example). The first command will install them if they don't already exist, the following will display messages that the entities already exist and thus were skipped.

    Finally, go to the Harvester admin at http://localhost:8080/harvester-admin/, "Storage Engines", select the definition for FOLIO at localhost, enter the password for diku-admin in place of "PW-HERE" (this could of course also have been done in the `STORAGE*.xml` file before `push-configs`). 

    It should now be possible to run each of the jobs to populate the new Inventory. 
