#!/bin/bash

#comenzar siempre con validacion de errores
# test -d "$1" | echo error; exit -1 # con este basta y no necesias hacer otra validacion

if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

directorio="$1"

dirnum=0

for elemento in "$directorio"/*;do
    if [ -d "$elemento" ]; then
        let dirnum=dirnum+1
    fi
done
echo "En el directorio hay $dirnum subdirectorios"

#for elemento in $(ls "$directorio"); do
#cuando se usa ls tenemos que usar directorio + lo otro
# test -d "$directorio/$elemento" && let contador=contador+1
#done
# echo $contador
