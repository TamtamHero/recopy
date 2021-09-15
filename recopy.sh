#!/bin/bash

if [ -z $1 ] ; then
    eval "$(head -n 1 /var/lock/recopy.lock)" .
else
    eval "$(head -n 1 /var/lock/recopy.lock) \"$@\""
fi
