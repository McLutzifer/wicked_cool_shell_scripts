#!/bin/bash


in_path()
{
    cmd=$1  ourpath=$2  result=1
    oldIFS=$IFS     IFS=":"

    for directory in "$ourpath"
    do
        if [ -x $directory/$cmd ] ; then
            result=0    # If we're here, we found the command.
        fi
    done
}