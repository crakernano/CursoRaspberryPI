#!/bin/sh

while true; do
	#Mostramos un menu al usuario
	echo "Seleccione una opcion"
	echo "1.Piedra"
	echo "2.Papel"
	echo "3.Tijera"
	echo "->"

	#Leemos la opcion introducida por el usuario
	read opcUsr

	#Numero aleatorio entre el 0 y el 3
	opcMaquina=$(shuf -n 1 -i 1-3)

	#Convertimos las opciones numericas en piedra, papel o tijera
	case $opcUsr in
		1)herramientaUsr="Piedra";;
		2)herramientaUsr="Papel";;
		3)herramientaUsr="Tijera";;
		*)herramientaUsr="Opcion incorrecta";;
	esac

	case $opcMaquina in
        	1)herramientaMaquina="Piedra";;
        	2)herramientaMaquina="Papel";;
        	3)herramientaMaquina="Tijera";;
        	*)herramientaMaquina="Opcion incorrecta";;
	esac

	#Mostramos con que lucha cada uno
	echo "Mi opcion: "
	echo $opcMaquina")"$herramientaMaquina

	echo "Contra tu opcion: "
	echo $opcUsr")"$herramientaUsr

	#Designamos un ganador.

	if test "$opcUsr" -eq "$opcMaquina"; then
		echo empate
	elif(test "$opcUsr" -eq "1")&&(test "$opcMaquina" -eq "2"); then
		echo "Gano"
	elif(test "$opcUsr" -eq "1")&&(test "$opcMaquina" -eq "3"); then
        	echo "Ganas"
	elif(test "$opcUsr" -eq "2")&&(test "$opcMaquina" -eq "1"); then
        	echo "Ganas"
	elif(test "$opcUsr" -eq "2")&&(test "$opcMaquina" -eq "3"); then
        	echo "Gano"
	elif(test "$opcUsr" -eq "3")&&(test "$opcMaquina" -eq "1"); then
        	echo "Gano"
	elif(test "$opcUsr" -eq "3")&&(test "$opcMaquina" -eq "2"); then
        	echo "Ganas"
	fi
	
	echo""
	echo "----------------------------------------------------------"
	echo""
done
