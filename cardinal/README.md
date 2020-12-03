# Setting up a shared index Cardinal for ReShare demo with four imaginary libraries

Scripts in these directories can be used for
 1) setting up location hierarchies and record identifier types for "East", "West", "North" and "South"  on a freshly installed FOLIO instance
 2) configuring jobs in Harvester for loading bibliographic records for East, West, North, South

## 1 Configuring a library in FOLIO Inventory for a shared index

This probably involves cleaning up pre-installed locations and Inventory records :

- possibly delete sample inventory records, like instances and holdings (often not loaded at install)
- [delete FOLIO's default sample institutions and locations](delete-folio-sample-locations.sh)

And then, to load the new library structures:

- [create East's, West's, North's and South's library locations structures and their ReShare record identifier types](create-sample-library-structure.sh)

#### Examples

Clear out FOLIO's default sample locations for 'diku' in FOLIO Inventory on localhost:

`./delete-folio-sample-locations.sh diku@localhost:9130.sh`

Install East's and West's locations and library codes in FOLIO Inventory on localhost:

`./create-sample-library-structure.sh diku@localhost:9130.sh`

Install East's and West's localtions and library codes in SI Cardinal:

`./create-sample-library-structure.sh si_cardinal@si-cardinal-okapi.folio-dev.indexdata.com.sh`

More target Inventories can be added following the template of `diku@localhost:9130.sh` and `si_cardinal@si-cardinal-okapi.folio-dev.indexdata.com.sh`

## 2 Configuring harvest jobs to populate Inventory with Instances, holdings records and items for a library

The `harvesting/shared` directory contains two Inventory storage definitions to set up in the Harvester - one for an [Inventory at localhost as seen from a Harvester in a Vagrant box](harvesting/shared/STORAGE-localhost.xml), and one for [SI Cardinal](harvesting/shared/STORAGE-si-cardinal.xml). It then contains four job definitions for harvesting to East and/or West at either of these two FOLIO addresses, as well as the transformation steps required to harvest OAI-PMH MARC records to FOLIO Inventory.

The storage definitions must be finished with the correct passwords - either by editing the `STORAGE*.xml` configuration files, in the `shared/` directory, before running the scripts or by going to the Harvester's admin UI, "Storage Engines", after pushing the configs.

#### Examples

Configure storages, transformations, jobs for Cardinal (demo) in a Harvester at localhost:8080

`./harvesting/push-shared-east-west-north-south.sh localhost8080.sh`

If the harvester access config script contains a username, a password prompt will appear upon executing the scripts:

`./harvesting/push-shared-east-west-north-south.sh harvester.folio-dev-us-east-1-1.folio-dev.indexdata.com.sh`

The Harvester configurations are in XML files following a naming convention that lets the script know what Harvester end points to POST or PUT the different configuration files to:

- HARVESTABLE*.xml  - contains the definition of a harvest job
- STORAGE*.xml - contains the Inventory storage URL, end points and credentials
- TRANSFORMATION*.xml - contains the transformation pipeline that a harvest job attaches to
- STEP*.xml - contains the individual transformation steps that make up a pipeline

Thus in order to ommit some configs (for example the SI cardinal storage and the East and West jobs referencing that storage) the relevant XML files can be prefixed (say, with "skipSTORAGE.xml") so that the curl script will not find them.

