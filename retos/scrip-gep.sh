#!/bin/bash

directorio="$1"
cadena="$2"

test -d "$directorio" || { echo "El primer parametro debe ser un directorio"; exit 1; }

test "$2" || { echo "Se esperaban dos parametros"; exit 1; }

for archivo in $(ls "$directorio" ); do
    grep "$cadena" "$directorio/$archivo" &> /dev/null && echo "$archivo"

done
