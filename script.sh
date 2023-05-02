#!/bin/bash
while true
do
    if ! command -v mysql &> /dev/null
    then
        sleep 1
    else
        break
    fi
done
