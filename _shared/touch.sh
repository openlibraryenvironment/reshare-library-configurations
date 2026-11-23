#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token`
MK=goldrush
SLP=0

while [ "$#" -gt 0 ]; do
  case "$1" in
    -k)
      MK=$2
      shift 2
      ;;
    -f)
      INFILE=$2
      shift 2
      ;;
    *)
      SRCIDS=$1
      shift
      ;;
  esac
done

if [ "$INFILE" ]; then
  SRCIDS=`sort -u $INFILE`
  SLP=10
fi

if [ ! "$SRCIDS" ]; then
    echo "Usage: $0 <sourceId> [ -f read_sourceIds_from_file, -k matchkey ]"
    exit
fi

for SRCID in $SRCIDS; do
  URL="${OKAPI}/reservoir/clusters/touch?query=matchkeyId==${MK}%20AND%20sourceId==${SRCID}"
  echo "POST $URL"
  curl -w '\n' --http1.1 $URL -H 'content-type: application/json' -H "x-okapi-token: ${TOKEN}" -d {}
  if [ $SLP -gt 0 ]; then
    echo "Sleeping ${SLP} seconds..."
    sleep $SLP
  fi
done

