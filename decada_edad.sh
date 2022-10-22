#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: El parametro no esta entre 15 y 60.
# Exit code 3: El directorio introducido por parametro no existe.

# compruebo un numero / que sea numero / entre 15 y 60 / año de forma auto / restar el año a la edad y hacer un case con parametros en plan
# 1950 a 59

function decadadEdad {

    echo "Escribe tu edad (Entre 15 y 60 años)"
    read edad

    if ! [ "$edad" -eq "$edad" ] 2>/dev/null; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valor no puede estar vacio o no es un número. ¡Compruebalo!"
        exit 1
    else
        # Si se han introducido 3 parametros que sean números, comprobaremos que están entre el mínimo y el máximo con las funciones creadas posteriormente.
        # Si se comenta comprobarNumMin o comprobarNumMax, se quitara los valores minimos / maximos, respectivamente.
        comprobarNum
        echo ""
    fi
}

# Creamos la función para que el número máximo no sea mas de 272
function comprobarNum {
    # Comprobamos que la altura es menor que 3 metros, algo que aunque ya es demasiado alto, ya que lo máximo que se ha conocido ha sido 2,72.
    if [ "$edad" -lt "15" ] || [ "$edad" -gt "65" ]; then
        echo "La edad debe estar entre 15 y 65 años"
        exit 2
    fi
}

# resta y case

# Llamamos a la función principal
decadadEdad
