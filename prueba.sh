#!/bin/bash

# VariableS:
RES=0
# Bucle:
read num1
read num2
for VAR in $(seq $num1 $num2); do
    RES=$(expr $RES + $VAR)
done
# Resultado:
echo "El resultado es $RES."

function sequensia {
    seq -s "+" $num1 $num2
}

sequensia
