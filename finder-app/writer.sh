#!/bin/bash


if [ $# -lt 2 ]
then
    echo "not enough arguments"
    exit 1
fi

writefile=$1
writestr=$2

DIR="$(dirname "${writefile}")"
FILE="$(basename "${writefile}")"
mkdir -p ${DIR}
echo ${writestr}> ${writefile}

if [ $? -gt 0 ]
then
    echo "file could not be created"
    exit 1
fi
