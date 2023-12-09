#!/bin/bash
listar_interfases=false
red_cableada_dinamica=false
red_cableada_estatica=false
escaneo_redes=false
conexionWifi=false

ayuda(){
    echo "Uso: $0 [-i | -d | -e | -j]"
    echo "  -i: listar interfaces"
    echo "  -e: conectarse a red cableada estatica"
    echo "  -d: conectarse a una red cableada dinamica"
    echo "  -j: Escanea las redes inalambricas disponible y si tipo de cifrado"
}
ayuda_cableada(){
    echo "Recibe 4 parametros"
    echo "Uso: $0 -d dirIP mask gateway dns"
}

test $# -eq 0 && ayuda

while getopts ":idejw" opt; do
  case $opt in
    i)
      listar_interfases=true
      ;;
    d)
      red_cableada_dinamica=true
      ;;
    e)
      red_cableada_estatica=true
      ;;
    j)
      escaneo_redes=true
      ;;
    w)
        conexionWifi=true
        ;;
    \?)
      echo "Opción inválida: -$OPTARG"
      ayuda
      ;;
    :)
      echo "La opción -$OPTARG requiere un argumento."
      ayuda
      ;;
  esac
done

# Shift para eliminar las opciones procesadas
shift $((OPTIND-1))

# Listar Interfaces
if $listar_interfases;then
    echo "============ INTERFACES DE RED ====================="
    echo $(ip addr | grep -Po [1-9]:[" "][A-Za-z1-9]*)
fi
# Direccion IP Dinamica
if $red_cableada_dinamica;then
    lan=enp2s0
    sudo dhclient "$lan"
    if test $? -eq 0 ;then
        echo "Conexion realizada con exito"
    else
        echo "La conexion no se pudo realizar"
    fi
fi
#Direccion IP estatica cableada
if $red_cableada_estatica;then
    test $# -eq 4 || { ayuda_cableada; exit 1 ; }
    direccion_ip="$1"
    mascara="$2"
    gate="$3"
    servDNS="$4"
    intLan=enp2s0
    #Establecer la IP en la interfaz
    echo "Levantando interfaz $intLan"
    sudo ifconfig "$intLan" up #levantamos la interfaz por si llegara a estar abajo
    echo "Estableciendo ip"
    sudo ifconfig "$intLan" "$direccion_ip" netmask "$mascara" #asignamos la direccion ip a la interfaz
    echo "estableciendo gateway"
    sudo route add default gw "$gate" #agregamos una puerta de enlace
    echo "añadiendo dns´"
    sudo bash -c "echo 'nameserver $servDNS' >> /etc/resolv.conf"
fi
# Redes cercanas inalambricas
if $escaneo_redes;then
    wifi_interfaz="wlp3s0"
    wifi_scan_salida=$(sudo iw dev $wifi_interfaz scan | grep -A15 -E "SSID|RSN|WPA")
    lector_cabeza=false
        while read -r line; do
            if [[ $line =~ "SSID" ]]; then
                ssid=$(echo "$line" | awk '{print $NF}')
                lector_cabeza=false
            elif [[ $line =~ "WPA" || $line =~ "RSN" ]]; then
                lector_cabeza=true
                echo "Red: $ssid | Detalles de Cifrado:"
            elif [ "$lector_cabeza" == true ]; then
                echo "  $line"
            fi
        done <<< "$wifi_scan_salida"
fi
#conectar red inalambrica sin wpa
if $conexionWifi;then

fi
