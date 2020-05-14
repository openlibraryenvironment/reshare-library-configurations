# Setting up a shared index demo with imaginary libraries "East" and "West"

The scripts in this directory can be used for setting up location hierarchies and record identifier types for "East" and "West"  on a freshly installed FOLIO instance.

It involves following steps:

- possibly delete sample inventory records, like instances and holdings (often not loaded at install)
- [delete FOLIO's default sample institutions and locations](delete-folio-sample-locations.sh)
- [create East's and West's library locations structures and their ReShare record identifier types](create-sample-library-structure.sh)

A script setting variables for the target host and tenant and authenticating the user by password must be invoked to succesfully run each script. At the time of writing there are two such settings files in this directory: one for updating for [tenant 'diku' at 'localhost'](diku%40localhost%3A9130.sh) and another for updating demo service ['si-cardinal'](si_cardinal%40si-cardinal-okapi.folio-dev.indexdata.com.sh).



### Examples:

Clear out FOLIO's default sample locations for 'diku' on localhost, do:

`./delete-folio-sample-locations.sh diku@localhost:9130.sh`

Install East's and West's locations and library codes, do:

`./create-sample-library-structure.sh diku@localhost:9130.sh`

Install East's and West's localtions and library codes at Cardinal shared index:

`./create-sample-library-structure.sh si_cardinal@si-cardinal-okapi.folio-dev.indexdata.com.sh`

Configure storages, transformations, jobs for East and West in harvester at localhost:8080

`./harvesting/push-shared-east-west.sh localhost:8080`

  Passwords for FOLIO Inventory must be entered, either in the STORAGE configs before
  pushing or through the Harvester Admin UI after.

