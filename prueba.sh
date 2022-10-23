#!/bin/bash

function suma {
    suma=0
    for numero in "$@"; do
        suma=$(echo "$suma + $numero" | bc)
    done
    echo "La suma de todos los digitos es: $suma"
}

function sequensia {
    read num1
    read num2
    seq -s "+" $num1 $num2
}
# suma
# sequensia
