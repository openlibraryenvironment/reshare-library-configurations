#!/bin/bash

DEFAULTUSER='harvester_admin'
HOSTS="https://harvester.folio-dev-us-east-1-1.folio-dev.indexdata.com \
       https://cny-harvester.reshare.indexdata.com \
       https://palci-harvester-admin.reshare.indexdata.com"

SDIR=$1

if [ -z $SDIR ]
then
    echo "Usage: $0 <save_directory>"
    exit 1
fi

if [ ! -d $SDIR ]
then
    echo "Save directory \"${SDIR}\" not found!"
    exit 1
fi

select HOST in $HOSTS
do
    break
done

read -e -p "Enter username [${DEFAULTUSER}]: " UN

if [ -z $UN ]
then
    UN=$DEFAULTUSER
fi

read -es -p "Enter password: " PW
echo

EPS="harvestables steps transformations storages"

for EP in $EPS
do 
    ENDPOINT="${HOST}/harvester/records/${EP}"
    EPNAME=$(echo ${EP} | tr '[:lower:]' '[:upper:]')
    echo "Getting ${EPNAME} from ${HOST}"
    URL=$(echo $ENDPOINT | sed -E "s/\/\//\/\/${UN}:${PW}@/")
    IDS=$(curl $URL | grep '<id>' | grep -Eo '[0-9]+')
    for ID in $IDS
    do
        FURL="${URL}/${ID}"
        OUTFILE="${SDIR}/${EPNAME}-${ID}.xml"
        echo "Getting ${ENDPOINT}/${ID}"
        curl -o $OUTFILE $FURL
        echo "Writing to ${OUTFILE}"
        echo "============================="
    done
done