#!/bin/bash

if [ -z $1 ]
then
  echo "Usage: $0 <marc_binary_file>"
  exit
fi

if [ -e $1 ]
then
  echo "Saving to ${1}.xml..."
else
  echo "Can't find input file!"
  exit;
fi


yaz-marcdump -f marc8 -t utf8 -l 9=97 -o marcxml $1 > "${1}.xml"
