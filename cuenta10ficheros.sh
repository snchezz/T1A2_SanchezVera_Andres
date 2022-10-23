#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: Se ha introducido mas de un parametro.
# Exit code 3: El directorio introducido por parametro no existe.

# Primero creamos un If para saber si se ha introducido un parametro.

if [ "$#" -eq "0" ]; then
    #Si no se ha introducido, mostraremos un mensaje y se acabara el Script.
    echo "No has introducido ningún parámetro."
    exit 1
else
    if [ "$#" -gt "1" ]; then
        echo "Solo puedes introducir un parametro."
        exit 2
    else
    # Si existe, buscaremos si existe el directorio
        if [ -d "$1" ]; then
            # Si existe, se mostrará un mensaje y se accedera a el.
            echo "El directorio ${1} existe"
            cd $1
            # Se guardara en la variable numFicheros el número de ficheros que hay.
            numFicheros=$(find . -maxdepth 1 -type f | wc -l)

            # Con esta variable se compara si hay mas de 10, si lo hay, se mostrará un mensaje junto con el número de ficheros que hay
            if [ $numFicheros -gt "10" ]; then
                echo "El directorio tiene mas de 10 ficheros, tiene $numFicheros"
            else
                # Si no hay mas de 10, se mostrará un mensaje de aviso
                echo "ATENCIÓN: El directorio $1 no tiene mas de 10 ficheros."
            fi
        else
            echo "El directorio ${1} no existe, por lo tanto no se puede contar sus ficheros."
            exit 3
        fi
    fi
fi
