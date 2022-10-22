#!/bin/bash

read edad

if [ "$edad" -lt "15" ] || [ "$edad" -gt "65" ]; then
    echo "La edad debe estar entre 15 y 65 años"
    exit 2
else
    echo "holi"
    anyo=$(date +'%Y')
    echo "$anyo"
    pepe=$(($date-$edad))
    echo="$pepe"
fi
