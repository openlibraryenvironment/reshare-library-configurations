#!/bin/bash

if [ $1 ] 
then
	DAYS=$1
else
	DAYS=1
fi

ACCS='fandm moravian pcom robertmorris shu wvu westminster'

for a in $ACCS
do      
	LOGFILE=$a.log
	rm -f $LOGFILE
	FPATH=/home/$a/ftp/incoming
	MRCFILES=$(find $FPATH/*.* -maxdepth 0 -mtime -$DAYS)
	for mf in $MRCFILES
	do
		MCOM="./merge_mfhd.pl -z $mf"
		echo "Running ${MCOM}";
		$MCOM >> $LOGFILE
	done
done
