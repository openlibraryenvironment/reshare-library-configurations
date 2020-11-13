# Harvester configuration: How to write and push configuration files to the Harvester

## Writing configuration XML files

Following conventions must be used when creating config files if they are to be loaded to the Harvester using the script described later in the README:

- `HARVESTABLE*.xml`  - contains the definition of a harvest job
- `STORAGE*.xml` - contains the Inventory storage URL, end points and credentials
- `TRANSFORMATION*POST*.xml` - contains the transformation pipeline that a harvest job attaches to, the POST version don't have steps associated yet
- `TRANSFORMATION*PUT*.xml` - contains the transformation pipeline, including step associations.
- `STEP*.xml` - contains the individual transformation steps that make up a pipeline

For the PALCI libraries there is a Python script that can write files following this naming convention, thus providing basic scaffolding for Harvester configurations for a new PALCI library [the script is here](../../palci/harvester-configs/generate-templates/generateHarvesterConfig.py)

One thing the script takes care of is creating matching primary keys and foreign keys for the configuration records that are to be pushed to the configuration database. You need to provide it with a "seed" ID that it can create the keys from and you must ensure that you don't choose a number that's already used by another PALCI library (in the same Harvester at least).

The devised scheme has 6 digit keys, where the first three digits indicates the library. So all of Millersville's IDs will start with 301, Temple's with 302 and so forth.

This is how you can use the script:

1) Create a directory under harvester-configs/ to contain the harvester configuration files for the new library

2) Go into that directory and run the script. For example for an OAI-PMH job using `310` as the base ID for records:

  `python ../generate-templates/generateHarvesterConfig.py -l "My New Library" -i 310 -t oaiPmh -u http://new-librarys-oai-server/ -s an-oai-set-name`

or an XML/bulk job

  `python ../generate-templates/generateHarvesterConfig.py -l "My New Library" -i 310 -t xmlBulk -u ftp://ftp-server/`

The templates will contain stub XSLT stylesheets that must be completed as desired for the library in question in order for the jobs to do anything useful with the incoming data.

## Pushing the XML configuration files to the Harvester
The written configuration files can be pushed to the Harvester using the script [push-all.sh](push-all.sh). You run it from the directory containing the files and the script will find all XML files in that directory that match certain name patterns. The script will then push the files to the corresponding Harvester configuration end-points while skipping files with configurations that the script finds already exist in the Harvester.

The script takes two arguments, the base URL of the Harvester and optional basic authentication username:password.

The script is probably not invoked directly but rather through scripts tailormade for the different setups for demo or production installations. Scripts in the directories for [PALCI](/palci/harvester-configs) and [East-West (demo)](/east-west/harvesting) make use of `push-all.sh`.

The script looks at the file names to decide what Harvester end points to POST or PUT the different configuration files to, so the naming standard described earlier in the README must be followed. 

The `TRANSFORMATION` record must be pushed twice for the transformation step associations to stick. `push-all.sh` takes care of that, but it must be able to find both the `TRANSFORMATION*POST*.xml` and the `TRANSFORMATION*PUT*.xml`.

The script will search for the record's primary key in each XML file - looking for the value of the field &lt;id&gt;&lt;/id&gt; - and use that to look up the record by ID in the Harvester. If the record already exists with that ID in the Harvester, the file is skipped.

NOTE: It's important, when writing config files, that the configurations primary key element appears as the first ID element in the record -- for example at the top of the XML document -- before any other &lt;id&gt; fields holding foreign keys. The HARVESTABLE record for example has such foreign key &lt;id&gt; elements. The script will use the first ID it finds to determine if the record already exists.

