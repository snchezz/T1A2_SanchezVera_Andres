#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El valor se ha dejado vacio o no es un número.

echo "Escribe 2 números para calcular la suma de los números que conforman ese rango."
echo "Escribe el primer número."
read num1
echo "Escribe el segundo número."
read num2
if ! [ "$num1" -eq "$num1" ] 2>/dev/null; then
    # Si no se ha introducido un número o parametro, se notificara al usuario.
    echo "El parametro 1: -$num1- esta vacio o no es un número. ¡Compruebalo!, Recuerda que todos deben de ser un número."
    exit 1
else
    if ! [ "$num2" -eq "$num2" ] 2>/dev/null; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El parametro 2: -$num2- esta vacio o no es un número. ¡Compruebalo!, Recuerda que todos deben de ser un número."
        exit 1
    else
        # Comprobamos si los numeros estan invertidos (es decir que el mayor sea el segundo número)
        if [ "$num2" -lt "$num1" ]; then
            # Damos las vueltas a los números para que no cree un bucle erroneo
            alt1=$num2
            alt2=$num1

            # Bucle para realizar la suma:
            res=0
            for var in $(seq $alt1 $alt2); do
                res=$(expr $res + $var)
            done
            # Resultado:
            echo ""
            echo "El resultado es $res."
            # Secuencia que muestra los números que se han sumado
            echo -ne "Resultado de sumar: "
            seq -s "+" $al1 $alt2
            exit 0
        else
            # Si los números estan de forma correcta, de menor a mayor, no hara falta invertir los números.
            # Bucle para realizar la suma:
            res=0
            for var in $(seq $num1 $num2); do
                res=$(expr $res + $var)
            done
            # Resultado:
            echo ""
            echo "El resultado es $res."
            # Secuencia que muestra los números que se han sumado
            echo -ne "Resultado de sumar: "
            seq -s "+" $num1 $num2
            exit 0
        fi
    fi
fi
