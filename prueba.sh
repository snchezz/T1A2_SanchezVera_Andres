#!/bin/bash

echo "1) Suma
2) Resta
3) Salir"

function operacionSumar {
    read num1
    read num2
    var=$(($num1 + $num2))
    echo $var
}

function operacionRestar {
    read num1
    read num2
    var=$(($num1 - $num2))
    echo $var
}

while true; do
    echo "Dame una opc"
    read opc
    case $opc in
    1)
        echo "Suma"
        operacionSumar
        exit
        ;;
    2)
        echo "Resta"
        operacionRestar
        exit
        ;;
    3)
        echo "Salir"
        exit
        ;;
    *)
        echo "Elige una opción válida. Si quieres salir, pulsa 3"
        ;;
    esac
done
