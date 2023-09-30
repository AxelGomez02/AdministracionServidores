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
