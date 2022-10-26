#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: Se ha introducido mas de un parametro.

#!/bin/bash



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
            id $1
        else
            echo "El usuario no existe"
            exit 3
        fi

    fi
fi
