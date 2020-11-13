# Harvester configurations for loading bibliographic records from PALCI libraries to Inventory

Look here for more information on [how to write and push harvesting configuration files in general](/util/harvester/README.md) and [push the existing config files for PALCI libraries specifically](/palci/README.md).

There is a script that can write the basic scaffolding for Harvester configurations for a new PALCI library [here](/palci/harvester-configs/generate-templates/generateHarvesterConfig.py)

One thing the script takes care of is creating matching primary keys and foreign keys for the configuration records that are to be pushed to the configuration database. You need to provide it with a "seed" ID that it can create the keys from and you must ensure that you don't choose a number that's already used by another PALCI library (in the same Harvester at least).

The devised scheme has 6 digit keys, where the first three digits indicates the library. So all of Millersville's IDs will start with 301, Temple's with 302 and so forth.

This is how you can use the script:

1) Create a directory under harvester-configs/ to contain the harvester configuration files for the new library

2) Go into that directory and run the script. For example for an OAI-PMH job:

  `python ../generate-templates/generateHarvesterConfig.py -l "My New Library" -i 310 -t oaiPmh -u http://new-librarys-oai-server/ -s an-oai-set-name`

or an XML/bulk job

  `python ../generate-templates/generateHarvesterConfig.py -l "My New Library" -i 310 -t xmlBulk -u ftp://ftp-server/`

The templates will contain stub XSLT stylesheets that must be completed as desired for the jobs to do anything useful with the incoming data.