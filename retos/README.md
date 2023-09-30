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
Para este reto lo que teniamos que hacer era sencillo ese no me costo mucho 

![4454](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-27%2020-30-21.png)

lo que hace el scrip es sencillo, en 2 variables guarda la fecha y la hora donde en el if se verifica que en log exista el archivo, si no existe lo crea, si existe entonces guarda la direccion completa del archivo y este lo guarda, despues las variables se mandan al archivo y ahi se escriben, de hecho la escritura se puede hacer desde que sea verdadera la condicion. 
![98894](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-27%2020-33-51.png)
Aqui solo estamos probando que se escriba la fecha en el documento 

![17151](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-27%2022-53-34.png)

Aqui estamos iniciando el servicio
![3566787](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-27%2022-57-40.png)

Aqui lo que podemos ver es que al inicio me fallo tenia que configurar algo pero despues si se pudo linkear 

![331](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-25-15.png)

aqui podemos ver que sirve el servicio, dice dead por que segun mis conocimientos el timer es el que activa el servicio cada ver que se active escribe en el documento y se vuelve a apagar, por eso sale dead pero no failed
![312312](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-27%2023-20-24.png)

Ya no pongo el codigo y asi del timer pero dejo la evidencia de que cada 5 minutos se ejecuta y escribe esto 

# Reto 3 
Comenzamos creando el servicio A 

![57888](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-31-47.png)

Este es el servicio B 

![038y33](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-33-46.png)

Ambos tienen un script a ejecutar se llaman diferente pero hacen lo mismo un bucle infinito, con este bucle lo usaremos despues en otro momento para lo del CPU 

Comprobamos que esten corriendo los servicios, cabe destaracr que cuando corri el servicio b sin el a marcaba error 

![2](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-36-27.png)

![3](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-38-50.png)

Parando el servicio A 
![66](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-44-35.png)
Se para la dependencia B
![345678](https://github.com/AxelGomez02/AdministracionServidores/blob/main/retos/imagenes/Captura%20desde%202023-09-30%2000-45-03.png)
