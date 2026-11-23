#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

MK=goldrush
EL=0

while [ "$#" -gt 0 ]; do
  case "$1" in
    -k)
      MK=$2
      shift 2
      ;;
    -e)
      EL=$2
      shift 2
      ;;
    -d)
      DBUG=Yes
      shift
      ;;
    *)
      SRCID=$1
      shift
      ;;
  esac
done

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId> [ -k matchkey, -e element, -d debug (verbose) ]"
  exit
fi


URL="${OKAPI}/reservoir/clusters?matchkeyid=${MK}&query=sourceId==${SRCID}"

if [ $DBUG ]
then
  curl --http1.1 -w '\n' -v $URL -H "x-okapi-token: ${TOKEN}"
else
  curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}" | jq ".items[$EL]"
fi
