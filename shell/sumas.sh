#!/bin/sh

echo "introduzca el primer numero: "
read var1
echo "introduzca el segundo numero:"
read var2
resultado=$((var1+var2))

echo $var1"+"$var2"="$resultado
