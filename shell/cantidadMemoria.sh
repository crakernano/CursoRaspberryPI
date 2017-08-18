#!/bin/sh

total=$(free | grep Mem | sed 's/\s\+/,/g' | cut -d , -f2)
usada=$(free | grep Mem | sed 's/\s\+/,/g' | cut -d , -f3) 

#Primer reto
echo $usada "/" $total

##Segundo reto

#Calculo del porcentaje
#porciento=$((scale=2;usada / total|bc -1))
porciento=$(echo "scale=2; $usada/$total" | bc)
porciento=$(echo "scale=2; $porciento*100" | bc)
#porciento=$(`expr $porciento * 100`)

echo $porciento"%"
