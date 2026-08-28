#!/bin/bash

if [ -z "$1" ]
then
    echo "Datum: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"

    echo "Datum: $(date)" > izvestaj.txt
    echo "Hostname: $(hostname)" >> izvestaj.txt
    echo "Uptime: $(uptime)" >> izvestaj.txt
else
    echo "Izvestaj za: $1"
    echo "Datum: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"

    echo "Izvestaj za: $1" > izvestaj.txt
    echo "Datum: $(date)" >> izvestaj.txt
    echo "Hostname: $(hostname)" >> izvestaj.txt
    echo "Uptime: $(uptime)" >> izvestaj.txt
fi

