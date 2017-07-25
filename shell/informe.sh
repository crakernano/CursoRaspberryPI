#!/bin/sh

ficheros=$(ls)
usuario=$(who)
espacio=$(free)
temp=$(sensors)

echo "En esta carpeta tienes: "$ficheros
echo "Usuario: "$usuario
echo "Espacio libre: "$espacio
echo "Temperatura del sistema: "$temp
