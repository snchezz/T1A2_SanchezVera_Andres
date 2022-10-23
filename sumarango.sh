#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El valor se ha dejado vacio o no es un número.
# Exit code 2: El número ha superado el máximo permitido.
# Exit code 3: El número ha superado el mínimo permitido.

#!/bin/bash

# Andrés Sánchez

function comprobarNum {

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
        fi
    fi
}

function rango {
    calcular=$(($num1-$num2)) 
    echo "$calcular"
}


function numerosIguales {
    if [[ $num1 -eq $num2 && $num1 -eq $num3 ]]; then
        divisor=100
        altura1=$(echo "scale=2; $(($num1))/$((divisor))" | bc)
        echo "La 3 alturas introducidas son iguales: $altura1 metros"
    fi
}

# Llamamos a la función principal
comprobarNum
echo ""
rango