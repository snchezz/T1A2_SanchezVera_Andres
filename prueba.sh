#!/bin/bash

function buscarUser {
    if id "$1" >>ejerciciousuarios.log 2>&1; then
        echo "user exists"
    else
        echo "El usuario no existe"
        exit 3
    fi
}
 
 buscarUser