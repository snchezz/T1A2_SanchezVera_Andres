#!/bin/bash

# Crear una calculadora con 2 números y 4 opciones, sumar, restar, multiplicar y dividir

if [ "$#" -eq "2" ]; then
    echo "¿Que operación quieres hacer con $1 y $2?"
    echo ""
    echo " 1) Sumar \n 2) Restar \n 3) Multiplicar \n 4) Dividir"
    read opc
    echo ""
    case $opc in
    1)
        echo "Sumar"
        echo ""
        var=$(($1+$2)) 
        echo $var
        ;;
    2)
        echo "Restar"
        echo ""
        var=$(($1-$2)) 
        echo $var
        ;;
    3)
        echo "Multiplicar"
        echo ""
        var=$(($1*$2)) 
        echo $var
        ;;
    4)
        echo "Dividir"
        echo ""
        var=$(($1/$2)) 
        echo $var
        ;;
    *)
        echo "Debes elegir una opción del 1 al 4"
        ;;
    esac

else

    # Si no se han introducido, lo avisaremos con un mensaje
    echo "Debes introducir 2 parametros"
    exit 1
fi
