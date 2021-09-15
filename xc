#!/bin/bash

if [ -z $1 ] ; then
    flock /var/lock/recopy.lock printf "cp -r $(pwd)/* ." > /var/lock/recopy.lock
else
    if [ ! -f $(pwd)/$1 ]; then
        echo "File not found!"
    else
        flock /var/lock/recopy.lock printf "cp -r $(pwd)/$1 ." > /var/lock/recopy.lock
    fi
fi
