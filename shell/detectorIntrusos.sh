#!/bin/bash
#Basado en la obra de : franklin aliaga y microstudi
#Modificado por CrakerNano

#Es necesario tener instalado nmap -> sudo apt-get install nmap

#Ruta en la que se guardaran los ficheros.
ARCHIVOS="$HOME/host"

if [ -d $ARCHIVOS ];
then
echo "El directorio existe, podemos continuar."
#Comprobamos cuantos dispositivos se encontraban activos la ultima vez
ultimosConectados=$(wc -l $ARCHIVOS/host_ip1.txt | cut -c 1-2)
else
  #Si no existia el fichero con los host conectados lo creamos y asumimos que no habia dispositivos
echo "El directorio no existe, creandolo..."
mkdir "$HOME/host"
ultimosConectados=0
fi

#Escaneamos la red en busca de dispositivos y guardamos las IP en un fichero.
/usr/bin/nmap -sP 192.168.1.1/24 -oG $ARCHIVOS/hosts_ip.txt

#Nos quedamos unicamente con las lineas que contienen IPs
cat $ARCHIVOS/hosts_ip.txt | grep Host | cut -c 7-20 | tr -d "()" > $ARCHIVOS/host_ip1.txt

#Contamos el numero de lineas del fichero (que será el número de IP guardadas.)
conectados=$(wc -l $ARCHIVOS/host_ip1.txt | cut -c 1-2)

#Obtenemos nuestra ip
ip=$(hostname -I)
echo -e "\e[1;33mMi ip: $ip\e[0m"


#Comparamos los dispositivos actuales con los anteriores
echo "anteriormente:"
echo $ultimosConectados
echo "Ahora: "
echo $conectados

if test $conectados -gt $ultimosConectados;then
  echo -e "\e[0;31m¡¡NUEVO USUARIO CONECTADO!!\e[0m"
fi
