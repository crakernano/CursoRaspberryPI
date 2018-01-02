#!/bin/bash

salida(){
#'echo 17 > /sys/class/gpio/unexport' SIGINT
  echo "adios" 
  exit 0
}

while true;do
  echo "hola"
  trap "salida" 2 3
done
