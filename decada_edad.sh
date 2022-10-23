#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: El parametro no esta entre 15 y 60.

function decadadEdad {

    echo "Escribe tu edad (Entre 15 y 60 años)"
    read edad

    if ! [ "$edad" -eq "$edad" ] 2>/dev/null; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    else
        # Si se comenta comprobarNum, se quitara la condinción de minimos / maximos, respectivamente.
        comprobarNum
        echo ""
        comprobarDecada
    fi
}

function comprobarNum {
    # Comprobamos que la edad es mayor de 15 y menor de 65
    if [ "$edad" -lt "15" ] || [ "$edad" -gt "65" ]; then
        echo "La edad debe estar entre 15 y 65 años"
        exit 2
    else
        # Con date +'%Y' sacamos el año actual, y con la resta vemos el año de nacimiento.
        anyo=$(date +'%Y')
        let resta=$anyo-$edad
        echo "$resta"
    fi
}

function comprobarDecada {
    # Con un case comprobamos en que situación se encuentra la resta realizada anteriormente.
    case "$resta" in
    200[0-9])
        echo "Si naciste en $resta, naciste en la decada de 2000"
        ;;
    199[0-9])
        echo "Si naciste en $resta, naciste en la decada de 1990"
        ;;
    198[0-9])
        echo "Si naciste en $resta, naciste en la decada de 1980"
        ;;
    197[0-9])
        echo "Si naciste en $resta, naciste en la decada de 1970"
        ;;
    196[0-9])
        echo "Si naciste en $resta, naciste en la decada de 1960"
        ;;
    195[0-9])
        echo "Si naciste en $resta, naciste en la decada de 1950"
        ;;
    *)
        echo "La edad no esta entre 15 a 65 años"
        exit 2
        ;;
    esac
}

# Llamamos a la función principal
decadadEdad
