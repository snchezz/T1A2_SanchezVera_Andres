#!/bin/bash

# Creamos una función para comprobar que se ha introducido un parametros y si es un número.
function comprobarNum {

    echo "Escribe un número para saber si es multiplo de 10"
    read num
    if ! [ "$num" -eq "$num" ] 2>/dev/null; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El parametro esta vacio o no es un número. ¡Compruebalo!"
        exit 1
    else
        echo "El número introducido es: $num"
        echo ""
    fi
}

# Llamamos a la función
comprobarNum

# Creamos una varibale que va a calcular el resto, si este es 0, sabremos si es un multiplo de 10.
resto=$((num % 10))

# Creamos un if para comparar si el resultado del resto es 0 o no.
if [ $resto -eq "0" ]; then
    echo "$num es multiplo de 10 porque el resto es: $resto"
else
    echo "$num no es multiplo de 10 porque el resto es: $resto"
fi
