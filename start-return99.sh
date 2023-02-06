#!/bin/bash

#start_script() {
#    echo "$(date) at start $1" > applog
#    sh $1 > applog
#    if [ $? -ne 0 ]; then
#        echo "$(date) $1 failed" > applog
#    fi
#    echo "$(date) at start $1" > applog
#}

echo "$(date) at start script 1" > applog
bash return99.sh > applog
if [ $? -ne 0 ]; then
    echo "$(date) child process failed" > applog
fi
echo "$(date) at start script 2" > applog

