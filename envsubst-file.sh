#!/bin/sh

FILENAME=$1
FILENAME_NEW=$2

if [ ! $FILENAME ]
then
  echo 'No filename argument provided'
  exit -1
fi
if [ ! $FILENAME2 ]
then
  FILENAME_NEW=$FILENAME
fi
echo "Processing $FILENAME ..."

envsubst < $FILENAME > $FILENAME-bak
echo "Finished modifying file"
mv $FILENAME-bak $FILENAME_NEW
