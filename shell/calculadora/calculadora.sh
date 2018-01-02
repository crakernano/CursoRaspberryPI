#!/bin/sh

echo "1.sumar"
echo "2.Restar"

read opcion

case $opcion in
	1)./sumas.sh;;
	2)./restas.sh;;
	*)echo "opcion incorrecta";;
esac
