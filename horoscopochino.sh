#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El valor se ha dejado vacio o no es un número.
# Exit code 2: El número ha superado el mínimo / máximo permitido.

function horoscopoChino {

    echo "¡Pon tu año de nacimiento para saber que horoscopo chino eres!"
    read num

    if ! [ "$num" -eq "$num" ] 2>/dev/null; then
        # Si no se ha introducido un número o parametro, se notificara al usuario.
        echo "El valo introducido esta vacio o no es un número. ¡Compruebalo!, Recuerda que deben de ser tu año de nacimiento."
        exit 1
    else
        # Si el valor introducido es un número, se comprobara con la función especicamente creada para ello.
        comprobarNum
    fi

}

# Creamos la función para que compruebe que el número no sea menor que 1000 y mayor que 2022
function comprobarNum {
    if [ "$num" -lt "1000" ] || [ "$num" -gt "2022" ]; then
        echo "El año de nacimiento debe estar entre 1000 y 2022"
        exit 2
    else
        # Si el valor esta entre los valores permitidos, llamamos a la funcion para comprobar que Horoscopo es.
        echo ""
        comprobarHoroscopo
    fi
}

function comprobarHoroscopo {
    # Hacemos una división del año introducido entre 12 y el resto será el número que decidirá mediante un case que horoscopo chino pertenece.
    restoDiv=$((num % 12))

    case "$restoDiv" in
    0)
        echo "Tu horoscopo chino es: La rata"
        ;;
    1)
        echo "Tu horoscopo chino es: El buey"
        ;;
    2)
        echo "Tu horoscopo chino es: El tigre"
        ;;
    3)
        echo "Tu horoscopo chino es: El conejo"
        ;;
    4)
        echo "Tu horoscopo chino es: El dragón"
        ;;
    5)
        echo "Tu horoscopo chino es: La serpiente"
        ;;
    6)
        echo "Tu horoscopo chino es: El caballo"
        ;;
    7)
        echo "Tu horoscopo chino es: La cabra"
        ;;
    8)
        echo "Tu horoscopo chino es: El mono"
        ;;
    9)
        echo "Tu horoscopo chino es: El gallo"
        ;;
    10)
        echo "Tu horoscopo chino es: El perro"
        ;;
    11)
        echo "Tu horoscopo chino es: El cerdo"
        ;;
    *)
        echo "Error"
        exit 2
        ;;
    esac
}

# Llamamos a la función principal
horoscopoChino
