#!/bin/bash
writefile=$1
writestr=$2

if [ $# -lt 2 ] || [ ! -n $writestr ]
then
        echo "Incorrect arguments"
        exit 1
fi

if [ ! -f $writefile ]
then
        touch $writefile
fi
        echo "$writestr" > $writefile
