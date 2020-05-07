# Setting up a shared index demo with imaginary libraries "East" and "West"

The scripts in this directory can be used for setting up location hierarchies and record identifier types for "East" and "West"  on a freshly installed FOLIO instance.

It involves following steps:

- possibly delete sample inventory records, like instances and holdings (often not loaded at install)
- [delete FOLIO's default sample institutions and locations](delete-folio-sample-locations.sh)
- [create East's and West's library locations structures and their ReShare record identifier types](create-sample-library-structure.sh)

A script setting variables for the target host and tenant and authenticating the user by password must be invoked to succesfully run each script. At the time of writing there are two such settings files in this directory: one for updating for [tenant 'diku' at 'localhost'](diku%40localhost%3A9130.sh) and another for updating demo service ['si-cardinal'](si_cardinal%40si-cardinal-okapi.folio-dev.indexdata.com.sh).

In order to harvest inventory data for East and West, the [appropriate stylesheets](harvester-style-sheets) must be installed in the [Harvester](https://github.com/indexdata/localindices). These style sheets reference identifiers installed to the given FOLIO server by the scripts described here.  

### Examples: 

To clear out FOLIO's default sample locations for 'diku' on localhost, do:

`./delete-folio-sample-locations.sh diku@localhost:9130.sh`

And to install East's and West's locations and library codes, do:

`./create-sample-library-structure.sh diku@localhost:9130.sh`
