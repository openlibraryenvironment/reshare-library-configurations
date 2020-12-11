# Creating and loading FOLIO reference data

## Making reference objects

The make_objects.pl Perl script will create indentifier-types, service-points, institutions, campuses, libraries and locations objects based on 
values defined in the config.json and locations.tsv files.   Both files are required and should be placed in a unique directory [look here](/palci/inventory-reference-data/bloomsburg).

`Usage: ./make_objects.pl <locations.tsv path>`

This script will create JSON-line flavored files which then may be loaded via the *_objects.sh CRUD scripts.

Here's what's happening in the config.json file:

```
{
  "institutionCode": "US-PBBS",
  "institutionName": "Bloomsburg",
  "campusCode": "",
  "campusName": "",
  "libraryCode": "",
  "libraryName": "",
  "servicePointCode": "",
  "servicePointName": "",
  "identifierName": ""
}
```
* institutionCode -- required (usually the ISIL code)
* institutionName -- required
* campusCode -- optional (defaults to "institutionCode/institutionCode")
* campusName -- optional (defaults to institutionName)
* libraryCode -- optional (defaults to "campusCode/institutionCode")
* libraryName -- optional (defaults to institutionName)
* servicePointCode -- optional (defaults to institutionCode)
* servicePointName -- optional (defaults to institutionName)
* identifierName -- optional (defaults to "Reshare_institutionCode")

The locations.tsv file should be downloaded from the "Locations" tab in the templates spreadsheet.

## Loading refererence objects

There are four bash scripts that will read login information from two environment variables: `tenant` and `token`.  Please use one of various login scripts to create these.  

Usage (notice the dot!):

`. post_objects.sh <*.jsonl file>`

`. put_objects.sh <*.jsonl file>`

`. delete_objects.sh <*.jsonl file>`

`. get_objects.sh`

The first three scripts will determine the OKAPI endpoint by filename.  If the filename doesn't map to an endpoint, then the user is presented with a select list.  The get_objects.sh script will always display an endpoint select list.