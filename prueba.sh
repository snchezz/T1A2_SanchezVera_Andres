#!/bin/bash
read num1
read num2
echo ""

function sequensiaSuma {
    res=0
    # Bucle:

    for var in $(seq $num1 $num2); do
        res=$(expr $res + $var)
    done
    # Resultado:
    echo "El resultado es $res."
}

function sequensia {
    seq -s "+" $num1 $num2
}

function vuelti {
    if [ "$num2" -lt "$num1" ]; then
        echo "El numero 2 es menor bro"
        alt1=$num2
        alt2=$num1
        echo "$alt1"
        echo "$alt2"

        res=0
        # Bucle:

        for var in $(seq $alt1 $alt2); do
            res=$(expr $res + $var)
        done
        # Resultado:
        echo "El resultado es $res."
    fi
}

# sequensiaSuma
# sequensia
vuelti
