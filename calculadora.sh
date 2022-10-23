#!/bin/bash

echo "1)Sumar
2)Restar
3)Dividir
4)Multiplicar
5)Salir"

read opc
case $opc in
1)
    echo "Sumar"
    echo ""
    operacionSumar
    ;;
2)
    echo "Restar"
    echo ""
    var=$(($1 - $2))
    echo $var
    ;;
3)
    echo "Multiplicar"
    echo ""
    var=$(($1 * $2))
    echo $var
    ;;
4)
    echo "Dividir"
    echo ""
    var=$(($1 / $2))
    echo $var
    ;;
5)
    echo "Dividir"
    echo ""
    var=$(($1 / $2))
    echo $var
    ;;
*)
    echo "Debes elegir una opción del 1 al 4"
    ;;
esac

function operacionSumar {
    var=$(($1 + $2))
    echo $var
}
