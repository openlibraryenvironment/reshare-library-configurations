file=$1
host=$2
id=$3

if [[ $file = *STORAGE* ]]; then
	echo "POSTing $file to $2/harvester/records/storages"
fi

if [[ $file = *STEP* ]]; then
	echo "POSTing $file to $2/harvester/records/steps"
fi

if [[ $file = *TRANSFORMATION*POST ]]; then
	echo "POSTing $file to $2/harvester/records/transformations"
fi

if [[ $file = *TRANSFORMATION*PUT* ]]; then
	echo "PUTing $file to $2/harvester/records/transformations/$id"
fi

if [[ $file = *HARVESTABLE* ]]; then
	echo "POSTing $file to $2/harvester/records/harvestables"
fi
