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
    *)
      SRCID=$1
      shift
      ;;
  esac
done

if [ -z $SRCID ]
then
  echo "Usage: ${0} <sourceId> [ -k <matchkey> ]"
  exit
fi

URL="${OKAPI}/reservoir/clusters?matchkeyid=${MK}&query=sourceId==${SRCID}"
echo "GET ${URL}" 1>&2

RES=$(curl --http1.1 -w '\n' -s $URL -H "x-okapi-token: ${TOKEN}")
echo $RES
