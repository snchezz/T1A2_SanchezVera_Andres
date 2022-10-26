#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El valor introducido no esta permitido.

# Primero creamos una función para comprobar que los números escritos por teclado
# sean números y no texto o este vacio.

function leerNum {
    echo ""
    echo "Dame el primer número"
    read num1
    if ! [ "$num1" -eq "$num1" ] 2>>errores.txt && date >>errores.txt; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    fi
    echo "Dame el segundo número"
    read num2
    if ! [ "$num2" -eq "$num2" ] 2>>errores.txt && date >>errores.txt; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    fi
}

# Creamos las funciones de operaciones:
# Sumar
function operacionSumar {
    leerNum
    var=$(($num1 + $num2))
    echo "El resultado es: $var"
    echo ""
}
# Restar
function operacionRestar {
    leerNum
    var=$(($num1 - $num2))
    echo "El resultado es: $var"
    echo ""
}
# Multiplicar
function operacionMultiplicar {
    leerNum
    var=$(($num1 * $num2))
    echo "El resultado es: $var"
    echo ""
}
# Dividir
function operacionDivision {
    leerNum
    echo "El resultado es:"
    # Con scale indicamos el número de decimales que queremos mostrar
    echo "scale=2; $num1 / $num2" | bc
    echo ""
}

# En un bucle while, para que se repita hasta que de un error o
# se salga con la opción 5
while true; do
    echo "Elige una opción"
    echo " 1)Sumar
 2)Restar
 3)Multiplicar
 4)Dividir
 5)Salir"

    # Leemos la opción que ha elegido y llamamos a la función correspondiente
    read opc
    case $opc in
    1)
        operacionSumar
        ;;
    2)
        operacionRestar
        ;;
    3)
        operacionMultiplicar
        ;;
    4)
        operacionDivision
        ;;
    5)
        echo "Has salido de la calculadora."
        exit
        ;;
    *)
        # Si no se ha elegido una opción válida
        echo "Elige una opción válida. Si quieres salir, pulsa 5"
        sleep 1s
        echo ""
        ;;
    esac
done
