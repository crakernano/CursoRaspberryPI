#!/bin/sh

echo "1.sumar"
echo "2.salir"

read opcion

case $opcion in
	1)./sumas.sh;;
	2)echo "Adios";;
	*)echo "opcion incorrecta";;
esac
