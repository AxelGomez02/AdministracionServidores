#!/bin/bash

archivo="$1"
destino="$2"
#Obtener nombre archivo
nArchivo=$(basename "$archivo")
#Fecha
f=$(date +%Y%m%d )
#Nombre Usuario
us=$(whoami)
#NUEVO ARCHIVO Y ESTE SE LE MANDA ALGO
touch "n.txt" 
echo "$us" > "n.txt"

respaldo="$nArchivo$f.txt"

cat "n.txt" $archivo > $respaldo
#cp $archivo $destino/$respaldo
mv $respaldo $destino 

#sed -i '1i\$us' $respaldo
