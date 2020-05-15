# Harvester configuration: How to write and push configuration files to the Harvester

When executing the script [push-all.sh](push-all.sh) in a given directory, the script will find all XML files in that directory that match certain name patterns. The script will then push the files to the corresponding Harvester configuration end-points while skipping files with configurations that the script finds already exist in the Harvester.

The script looks at the file names to decide what Harvester end points to POST or PUT the different configuration files to, so following conventions must be used when creating config files:

- `HARVESTABLE*.xml`  - contains the definition of a harvest job
- `STORAGE*.xml` - contains the Inventory storage URL, end points and credentials
- `TRANSFORMATION*POST*.xml` - contains the transformation pipeline that a harvest job attaches to, the POST version don't have steps associated yet
- `TRANSFOMRATION*PUT*.xml` - contains the transformation pipeline, including step associations, this version must be PUT, after the associations (TSAS) themselves have been pushed. 
- `STEP*.xml` - contains the individual transformation steps that make up a pipeline
- `TSAS*.xml` - (transformation step associations) defines what STEPs are included in what pipelines

Due to peculiarities in the Harvester APIs and the underlying Java Persistence API (JPA) the `TRANSFORMATION` record must be pushed twice for the transformation step associations to stick. `push-all.sh` takes care of that, but it must be able to find both the `TRANSFORMATION*POST*.xml` and the `TRANSFORMATION*PUT*.xml` or the step associations will appear not to persist, at least not without a Tomcat restart.

The script will search for the record's primary key in each XML file - looking for the value of the field &lt;id&gt;&lt;/id&gt; - and use that to look up the record by ID in the Harvester. If the record already exists with that ID in the Harvester, the file is skipped. 

NOTE: It's important, when writing config files, that the configurations primary key element appears as the first ID element in the record -- for example at the top of the XML document -- before any other &lt;id&gt; fields holding foreign keys. The HARVESTABLE record for example has such foreign key &lt;id&gt; elements. The script will use the first ID it finds to determine if the record already exists. 

