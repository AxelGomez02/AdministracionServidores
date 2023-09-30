# Adminstracion de Servidores 
### Axel Naim Gomez Carreta 
#### Retos de la actividad que se han realizado 
  
## Reto 0 

![Imagen Target](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2015-13-08.png)

Dentro de la primera actividad lo que teniamos que hacer es cambiar el modo grafico al cli viendo como es que funciona SystemD  
lo que se puso en la imagen nos dice lo que systemD esta apuntando. 

![Image Target](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2015-13-22.png)

Lo que se muestra en la imagen "graphical.target" es lo que sistemD esta corriendo por defecto, es decir el nivel de sistema en el que se ejecuta el cual es un nivel mas arriba que el multi.user.target

![Image Target](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2015-25-13.png)

Aqui como se puede ver, lo que se hizo con el set defaul es decirle a systemD que ponga por defecto el nivel de arraque que se le dijo, con el get default comprobamos que realmente se haya hecho el cambio del nivel de ejecusion.

![Image Target](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2015-26-06.png)

Aqui lo unico que hice fue dejar por defecto el graphical.target

# Reto 1
### servidor web apache personalizado 
Aqui estaba confundido por que la verdad no me dejaba acceder a la pagina web trate de todo pero no pude, lo consultare con el maestro despues, por ahora subire mis caspturas de las actividades con lo que hize en apache 

![TEXTO](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2018-10-22.png)

aqui los ficheros para el servidor apache lo estamos instalando en la carpeta apache2p, esta se localiza en home por lo que estamos dando --prexix mas la direccion. Despues pondremos make y make install despues ejecutar el comando para que corra el servidor 
![12212](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2018-11-47.png)
![3123324342](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2018-13-27.png)
![23324](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2018-13-47.png)

como podemos ver ahi quedaron los archivos para el servidor apache, en el init y todo quedo como el de la primera actividad pero cuya una cosa que desconozco no saldra, pero la primera actividad si quedo 
![233](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-29%2021-14-12.png)
Asi quedo para el segundo servidor 
![32897](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-29%2021-16-40.png)

Para el primer servicio apache quedo asi!!! aunque no pude acceder desde el navegador por alguna razon 

![856](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2012-46-28.png)
![43768](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-24%2012-44-55.png)

# Reto 2
