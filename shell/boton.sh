#!/bin/bash
echo 17 > /sys/class/gpio/export 
#Lo configuramos como salida 
echo in > /sys/class/gpio/gpio17/direction 

while true;do
if test "$(cat /sys/class/gpio/gpio17/value)" -eq "1";then
echo "Boton Pulsado"
sleep .1
fi
done

echo 17 > /sys/class/gpio/unexport
