#!/bin/bash

if [ -z $PIG_HOME ]; then
    echo "Set env variable PIG_HOME"
    exit
fi

TEST_DIR=`dirname $0`/../tests
cd $TEST_DIR


for file in `ls pig_scripts`;do 
   $PIG_HOME/bin/pig -x local -l /tmp/pig.logs -f pig_scripts/$file
done

cd -
