#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: Se ha introducido mas de un parametro.
# Exit code 3: El usuario introducido no existe.
# Exit code 4: Se ha introducido un parametro no permitido o no se ha introducido nada.

# Creamos la función para el siguiente usuario
function otroUsuario {
    if id "$user" >>ejerciciousuarios.log 2>&1; then
        id $user | cut -d ',' -f1
        exit 0
    else
        echo "El usuario $1 no existe"
        exit 3
    fi
}

# Comprobamos si se han introducido parametros
if [ "$#" -eq "0" ]; then
    # Si no se han introducido, lo avisaremos con un mensaje
    echo "Debes poner como parametro el nombre de usuario del que quieras obtener información"
    exit 1
else
    # Comprobamos que solo se ha introducido un parametro
    if [ "$#" -gt "1" ]; then
        echo "Solo se puede obtener información de uno en uno. Solo se admite un parametro"
        exit 2
    else
        # Comprobamos que exista el usuario
        if id "$1" >>ejerciciousuarios.log 2>&1; then
            # Mostramos ID UID GID
            echo "Usuario: $1"
            id $1 | cut -d ',' -f1
            echo "Su directorio es home/$1"
            # ls -lh /home

            sleep 2s
            echo ""
            echo "¿Quieres introducir otro usuario o quieres salir del programa?"
            echo "Pulsa S para buscar otro usuario o N para salir del programa"
            read opc
            # Ponemos un case para preguntarle al usuario si quiere preguntar por otro
            # usuario o no, si si se llamara a la funcion, si no, saldra del programa.
            case "$opc" in
            S | s)
                echo "Dime el nombre del otro usuario"
                read user
                otroUsuario
                ;;
            N | n)
                echo "Saliendo del programa"
                exit 0
                ;;
            *)
                echo "Debes elegir una de las dos opciones, S o N"
                exit 4
                ;;
            esac
        else
            echo "El usuario $1 no existe"
            exit 3
        fi
    fi
fi
