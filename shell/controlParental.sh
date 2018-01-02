#!/bin/sh

echo "indique su edad en formato numerico"
read edad

	if test "$edad" -lt 18;then
		echo "Eres menor"
	else
		echo "bienvenido"
		#firefox
		/usr/bin/firefox
		#Si no se ha instalado el firefox
		chromium-browser
	fi
