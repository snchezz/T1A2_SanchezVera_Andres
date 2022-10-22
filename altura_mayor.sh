#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El valor se ha dejado vacio o no es un número.
# Exit code 2: El número ha superado el máximo permitido.
# Exit code 3: El número ha superado el mínimo permitido.

# Creamos una función para comprobar que se ha introducido un parametros y si es un número.
# Posteriormente sera la función que contiene el resto de funciones.

function comprobarNum {

    echo "Pon 3 alturas en centimetros para ver cual es mayor (Min: 100 / Max: 272)"
    echo "Escribe el primer número."
    read num1
    echo "Escribe el segundo número."
    read num2
    echo "Escribe el tercero número."
    read num3

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
            if ! [ "$num3" -eq "$num3" ] 2>/dev/null; then
                # Si no se ha introd.ucido un número o parametro, se notificara al usuario.
                echo "El parametro 3 -$num3- esta vacio o no es un número. ¡Compruebalo!,Recuerda que todos deben de ser un número."
                exit 1
            fi
        fi
        # Si se han introducido 3 parametros que sean números, comprobaremos que están entre el mínimo y el máximo con las funciones creadas posteriormente.
        # Si se comenta comprobarNumMin o comprobarNumMax, se quitara los valores minimos / maximos, respectivamente.
        comprobarNumMin
        comprobarNumMax
        echo ""
        # Si se ponen 3 números iguales también saldra un mensaje personalizado, pero hara la altura.
        numerosIguales
        # Llamamos a la función para comprobar cual ha sido el número mayor y calcular la altura en metros
        calcularMayor
    fi
}

# Creamos la función para que el número máximo no sea mas de 272
function comprobarNumMax {
    # Comprobamos que la altura es menor que 3 metros, algo que aunque ya es demasiado alto, ya que lo máximo que se ha conocido ha sido 2,72.
    if [ "$num1" -ge "273" ] || [ "$num2" -ge "273" ] || [ "$num3" -ge "273" ]; then
        echo "La altura máxima conocida es de Robert Wadlow con 2,72 metros. Introduce un número menor que 272"
        exit 2
    fi
}

# Creamos la función para que el número mínimo sea 100 (1 Metro)
function comprobarNumMin {
    if [ "$num1" -lt "100" ] || [ "$num2" -lt "100" ] || [ "$num3" -lt "100" ]; then
        echo "La altura debe ser mayor que 100"
        exit 3
    fi
}

#Creamos la funcion que compare el mayor de los 3 números introducidos, y pase de cm a los metros que son, dividiendo entre 100.
function calcularMayor {
    if [[ $num1 -gt $num2 && $num1 -gt $num3 ]]; then
        divisor=100
        altura1=$(echo "scale=2; $(($num1))/$((divisor))" | bc)
        echo "La altura mayor es: $altura1 metros"
    fi
    if [[ $num2 -gt $num1 && $num2 -gt $num3 ]]; then
        divisor=100
        altura2=$(echo "scale=2; $(($num2))/$((divisor))" | bc)
        echo "La altura mayor es: $altura2 metros"
    fi
    if [[ $num3 -gt $num1 && $num3 -gt $num2 ]]; then
        divisor=100
        altura3=$(echo "scale=2; $(($num3))/$((divisor))" | bc)
        echo "La altura mayor es: $altura3 metros"
    fi
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
