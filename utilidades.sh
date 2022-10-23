#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: El nombre del archivo al que quieres dar permisos esta vacio.
# Exit code 2: El nombre del archivo al que quieres dar permisos no existe.
# Exit code 3: El directorio ejercicio3ASV ya existe.
# Exit code 4: La opción que elegiste no esta entre las permitidas.

echo "Elige una opción:"
echo "1) Dar permisos a un script"
echo "2) Crear directorio y ficheros para el ejercicio 3"
echo "3) Borrar el directorio y ficheros creados para el ejercicio 3"
read opc
echo ""

case $opc in
"1")
    echo "Escribe el archivo al que quieres dar permisos"
    read script
    if [ -z "$script" ]; then
        echo "No se le puede asignar permisos a el vacio. Debes escribir un archivo al que quieras darle permisos."
        exit 1
    else
        if [ -f $script ]; then
            echo ""
            echo "Se le ha concedido permisos de ejecución a $script"
            echo "Ya puedes ejecutarlo con ./tuscript.sh"
            chmod +x $script
            exit 0
        else
            # Si no existe saldra un texto diciendo que no existe
            echo ""
            echo "El fichero $script no existe. Se mostrará el contenido del directorio. ¡Revisa le nombre del archivo!"
            echo ""
            ls
            exit 2
        fi
    fi
    ;;
"2")
    echo "Se creara un directorio llamado ejercicio3ASV y llevara 11 archivos dentros."
    if [ -d "ejercicio3ASV" ]; then
        echo "El directorio ya existe, si quieres borrarlo, elige la opción 3"
        exit 1
    else
        echo "Se ha creado el directorio ejercicio3ASV con 11 archivos txt dentro"
        mkdir ejercicio3ASV
        cd ejercicio3ASV
        touch 1.txt 2.txt 3.txt 4.txt 5.txt 6.txt 7.txt 8.txt 9.txt 10.txt 11.txt 12.txt 13.txt 14.txt 15.txt
        cd ..
        exit 0
    fi
    ;;
"3")
    echo "Se borrara el directorio ejercicio3ASV, se usaran permisos de administrador"
    sudo rm -r ejercicio3ASV
    exit 0
    ;;
*)
    echo "La opción debe ser del 1 al 3"
    exit 4
    ;;
esac
