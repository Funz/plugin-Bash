#!/bin/bash

rbash $* & #containerize the created bash shell
PID_BASH=$!
echo $PID_BASH >> PID #this will allow Funz to kill process if needed

wait $PID_BASH

rm -f PID

ERROR=`tail -10 out.txt | grep "rror"`
if [ ! "$ERROR" == "" ]; then
    echo $ERROR >&2
    exit 1
fi