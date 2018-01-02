#!/bin/bash
#Exportamos el puerto GPIO 27 
echo 27 > /sys/class/gpio/export 
#Lo configuramos como salida 
echo out > /sys/class/gpio/gpio27/direction 
#Encendemos el LED asignandole 1 como valor lógico
echo 1 > /sys/class/gpio/gpio27/value
sleep 3
#Apagamos el LED asignandole 0 como valor lógico
echo 0 > /sys/class/gpio/gpio27/value  
#Eliminamos la entrada del puerto GPIO 27 
echo 27 > /sys/class/gpio/unexport 
