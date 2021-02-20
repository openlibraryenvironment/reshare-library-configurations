# Setting up PALCI libraries in a shared index and configure harvest jobs for them

In order to load data to a ReShare Inventory, the participitating libraries must have the locations set up in the Inventory and harvesting jobs must be set up in the Harvester to start loading bibliographic records to FOLIO. Also, ReShare's Inventory uses
a different set of item material types than the ones that come with FOLIO Inventory Storage, those types must be loaded to Inventory as well.

This is a description of the steps involved in pushing existing data and configurations to set up the library. For information on how to create configuration files for a new library [look here](/util/harvester/README.md). The examples below assume both the Harvester and FOLIO Inventory are running on localhost.

### Once per installation
1) A new FOLIO install may have some sample locations installed already - to remove them,

     go to folder `/delete-folio-sample-locations`

     and run
     `./delete-folio-sample-locations.sh diku@localhost:9130.sh`

2) Install ReShare item material types

    go to folder `/palci/inventory-reference-data/`

    and run

    `./shared-index-material-types/create-si-material-types.sh diku@localhost:9130.sh`

### Once per additional library
3) To install Millersville locations (granular locations structure in this example), Temple locations (granular too) and Villanova locations,

    go to folder `/palci/inventory-reference-data/`

    and run

    `./millersville/millersville-granular-location-codes-create.sh diku@localhost:9130.sh`

    `./temple/temple-granular-location-codes-create.sh diku@localhost:9130.sh`

    `./villanova/villanova-location-codes-create.sh diku@localhost:9130.sh`

4) To push configurations for the Harvest jobs that will populate Inventory with instances, holdings and item for Millersville, Temple and Villanova,

    go to folder `/palci/harvester-config`

    and assuming that the Harvester is running at `localhost:8080`, run

    `./push-configs.sh millersville _harvesters/localhost8080.sh`

    `./push-configs.sh temple _harvesters/localhost8080.sh`

    `./push-configs.sh villanova _harvesters/localhost8080.sh`

    For a remote harvester protected by basic authentication - and maybe SSL - the BASIC AUTH username should be provided in the host config scripts, which will bring up a password prompt. For example, the script providing access information for the Harvester at folio-dev-us-east-1-1 contains the BASIC user name for that Harvester:

    `./push-configs.sh temple _harvesters/harvester.folio-dev-us-east-1-1.folio-dev.indexdata.com.sh`

    Some of the configurations are shared (the FOLIO storage definition for example). The first command will install them if they don't already exist, the following will display messages that the entities already exist and thus were skipped.

    Finally, go to the Harvester admin at http://localhost:8080/harvester-admin/, "Storage Engines", select the definition for FOLIO at localhost, enter the password for diku-admin in place of "PW-HERE" (this could of course also have been done in the `STORAGE*.xml` file before `push-configs`).

    It should now be possible to run each of the jobs to populate the new Inventory.
