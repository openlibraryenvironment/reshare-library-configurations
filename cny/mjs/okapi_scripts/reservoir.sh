#!/bin/bash

TMP='./.okapi'
OKAPI=`cat ${TMP}/url`
TOKEN=`cat ${TMP}/token | sed 's/.$//'`

PS3="Choose one: "
EPS="reservoir/clusters reservoir/clusters?matchkeyid=goldrush reservoir/records reservoir/oai?verb=ListRecords reservoir/oai?verb=GetRecords reservoir/config/modules"

# getopts pdo: OPTS
while getopts "pdo:" o; do
    case "${o}" in
        d)
            DEBUG=1
	    ;;
        p)
            PRETTY=1
	    ;;
	o)
	    OUT=${OPTARG}
	    ;;
    esac
done

select EP in $EPS
do
	break
done

CQ=`cat ${TMP}/query`;
read -p "Query string [${CQ}]: " Q
if [ $Q == "-" ]; then
	Q=""
elif [ -z "$Q" ]; then
	Q=$CQ
fi
echo $Q > "${TMP}/query"

HEAD="x-okapi-token: ${TOKEN}"
URL="${OKAPI}/${EP}${Q}"
if [ $DEBUG ]
then
	echo "curl --http1.1 -w '\n' '$URL'"
fi

if [ $PRETTY ] && [ $OUT ]; then
	curl --http1.1 -w '\n' $URL -H "${HEAD}" | jq . > "$OUT"
elif [ $PRETTY ]; then
	curl --http1.1 -w '\n' -s $URL -H "${HEAD}" | jq .
elif [ $OUT ]; then
	curl --http1.1 -w '\n' $URL -H "${HEAD}" > "$OUT"
else
	curl --http1.1 -w '\n' -s $URL -H "${HEAD}"
fi
