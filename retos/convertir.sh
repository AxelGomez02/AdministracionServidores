#!/bin/bash

directorio="$1"

ayuda(){
	echo "la direccion tiene que ser directorio "
	echo "Un ejemplo es: "
	echo " /tmp/hola/ "
	echo "un ejemplo de algo que no es un directorio seria"
	echo "/tmp/hola.txt"
}

test -d "$1" && echo "Excelente" > /dev/null || { echo "Se espera un archivo"; ayuda; }

corrida(){
	for archivo in "$directorio"/*.jpg;
	do
		convertir "$archivo"
		rm "$archivo"
	done
}

convertir(){

	local archivo="$1"
	nomArchivo=$(basename "$archivo")
	convert "$archivo" "$nomArchivo".png
}

corrida "$directorio"
