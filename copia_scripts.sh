#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: No se ha introducido un parametro.
# Exit code 2: Se ha introducido mas de un parametro
# Exit code 3: El directorio no existe.

# que haga un copiado de los scripts creados en la carpeta pasada como parámetro, deben ser empaquetados con el comando tar y el nombre del archivo debe tener el siguiente formato: “copia_scripts_ddmmaaaa.tar” siendo dd el día, mm el mes y aaaa el año en el que se produce la copia.
#!/bin/bash

# Comprobamos si se han introducido parametros
if [ "$#" -eq "0" ]; then
    # Si no se han introducido, lo avisaremos con un mensaje
    echo "No has introducido ningún parámetro"
    exit 1
else
    # Comprobamos que solo ha introducido 1 parametro
    if [ "$#" -gt "1" ]; then
        echo "Solo se admite un parámetro."
        exit 2
    else
        # Comprobamos que el directorio existe
        if [ -d "$1" ]; then
            # Realizamos la copia
            echo "El directorio ${1} existe"
            tar cvf copia_scripts_$(date +%d%m%Y).tar $1
        else
            echo "El directorio ${1} no existe"
            exit 3
        fi
    fi
fi
