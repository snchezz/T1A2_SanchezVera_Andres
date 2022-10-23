#!/bin/bash

# Andrés Sánchez

# Exit code 0: Todo ha funcionado correctamente.
# Exit code 1: La opción introducida no es válida o no es un número.
# Exit code 2: La opción de simulación no es válida o no es un número.

echo "Elige una opción para saber cuántos días tiene el mes"
echo "1) Usar mes actual"
echo "2) Simular mes"
read opc
echo ""

case $opc in
1)
    echo "Usar el mes actual"
    # Con date +%m obtendremos el mes actual, y con un case saldrá el mes correspondiente
    mes=$(date +%m)
    case $mes in
    1)
        echo "Estamos en enero, un mes con 31 días"
        ;;
    2)
        echo "Estamos en febrero, un mes con 28 días"
        ;;
    3)
        echo "Estamos en marzo, un mes con 31 días"
        ;;
    4)
        echo "Estamos en abril, un mes con 30 días"
        ;;
    5)
        echo "Estamos en mayo, un mes con 31 días"
        ;;
    6)
        echo "Estamos en junio, un mes con 30 días"
        ;;
    7)
        echo "Estamos en julio, un mes con 31 días"
        ;;
    8)
        echo "Estamos en agosto, un mes con 31 días"
        ;;
    9)
        echo "Estamos en septiembre, un mes con 30 días"
        ;;
    10)
        echo "Estamos en octubre, un mes con 31 días"
        ;;
    11)
        echo "Estamos en noviembre, un mes con 30 días"
        ;;
    12)
        echo "Estamos en diciembre, un mes con 31 días"
        ;;
    *)
        echo "No hay mas de 12 meses, debes elegir un número del 1 al 12."
        ;;
    esac
    ;;
2)
    echo "Simular mes. Escribe el número de mes que quieres simular"
    # Mediante teclado, obtendremos el mes que vamos a simular y dependiendo
    # del número (mes) introducido, saldrá el número de días.
    read simularMes
    case $simularMes in
    1)
        echo "Estamos en enero, un mes con 31 días"
        ;;
    2)
        echo "Estamos en febrero, un mes con 28 días"
        ;;
    3)
        echo "Estamos en marzo, un mes con 31 días"
        ;;
    4)
        echo "Estamos en abril, un mes con 30 días"
        ;;
    5)
        echo "Estamos en mayo, un mes con 31 días"
        ;;
    6)
        echo "Estamos en junio, un mes con 30 días"
        ;;
    7)
        echo "Estamos en julio, un mes con 31 días"
        ;;
    8)
        echo "Estamos en agosto, un mes con 31 días"
        ;;
    9)
        echo "Estamos en septiembre, un mes con 30 días"
        ;;
    10)
        echo "Estamos en octubre, un mes con 31 días"
        ;;
    11)
        echo "Estamos en noviembre, un mes con 30 días"
        ;;
    12)
        echo "Estamos en diciembre, un mes con 31 días"
        ;;
    *)
        echo "No hay mas de 12 meses, debes elegir un número del 1 al 12."
        exit 2
        ;;
    esac
    ;;
*)
    echo "No se ha introducido una opción o se ha introducida una opción inexistente."
    exit 1
    ;;
esac
