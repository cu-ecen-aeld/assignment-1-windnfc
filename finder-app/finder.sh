#!/bin/bash
if [ $# -lt 2 ]
then
    echo "too few arguments"
    exit 1
fi

filesdir=$1
searchstr=$2

if ! [ -d ${filesdir} ]
then
    echo "$filesdir not found or is not a directory"
    exit 1
fi

totalfiles=$(grep ${searchstr} ${filesdir}/* -rc | wc -l)
findfiles=$(grep ${searchstr} ${filesdir}/* -r | wc -l)
echo "The number of files are $totalfiles and the number of matching lines are $findfiles"
