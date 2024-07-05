#!/bin/bash

if [[ $# == 0 ]]; then
    echo "Error: no arguments provided."
    exit 2
elif [[ $# == 1 ]]; then
    table="";
    key=$1;
elif [[ $# == 2 ]]; then
    table=$1;
    key=$2
else
    echo "Error: too many arguments provided."
    exit 2;
fi

gawk -v table="$table" -v key="$key" -f /usr/local/bin/gurl/gurl.awk ~/notes/urls

exit 0
