#!/bin/bash

start_script() {
    echo "$(date) start script $1" > applog
    sh $1 > applog
    if [ $? -ne 0 ]; then
        echo "$(date) $1 failed" > applog
    fi
    echo "$(date) finished script $1" > applog
}

start_script return0.sh
start_script return99.sh
