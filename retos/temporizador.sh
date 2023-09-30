#!/bin/bash

fecha_dia=$(date +%m:%d:%y)
fecha_hora=$(date +%H:%M:%S)

#verificar que existe el archivo
if test -e "/var/log/mi-log.log"; then
    dirArchivo="/var/log/mi-log.log"
   echo $fecha_dia "con" $fecha_hora >> "$dirArchivo"
else
    echo "El archivo no existe por lo que se esta creando, prueba de nuevo"
    touch "/var/log/mi-log.log"
fi


