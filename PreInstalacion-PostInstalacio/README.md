# Checklist Pre-Instalacion del Sistema debian 12


 - [ ] Validar disponibilidad en el Disco
- [ ] Respaldar la informacion 
- [ ] Checar los requsitos de Debian 12
- [ ] Verificar que los requisitos del sistema cunpla con el sistema operativo
- [ ] Preconfigurar el archivo booteable en la memorias USB, en este caso se toma en cuenta que ya hemos descargado el Iso previamente
- [ ] Ajustar el equipo para el arranque en caso de ser neceario
- [ ] En caso de ser necesario Particionar el Disco en el formato deseado
- [ ] Verificar y ver que queremos en nuestro sistema, programas, entornos graficos ETC
       
| MBR    |  GPT   |
| :---   | :---   |
| 4 particiones primarias | hasta 128 particiones prmimarias |

En mi caso yo en mi disco debido a que tengo uefi hice un formateo en GTP para tener mas de 4 particiones primarias

 # Durante la instalacion
 - [ ] Iniciamo la memoria booteble con el sistema de instalacion
 - [ ] Creamos las particiones necesarias para el sistema

En el cual yo elegi las sigiuientes 

|Capacidad  | Formato  | punto de montaje |
|:---|:---|:---|
|40 GB | EXT4 | / |
| 16GB | swap | swap|
| 40 GB | EXT4 | /home | 
| 22 GB | EXT4 | /usr |
| 20 GB | EXT4 | /var |
| 10 GB | EXT4 | /tmp |
| 10 GB | EXT4 | /srv |
| 10 GB | EXT4 | /boot |
| 15 GB | EXT4 | /opt | 

- [ ] proceguir con los pasos guiados
- [ ] Poner Nombre a la maquina 
- [ ] Definir  la contraseña root
- [ ] Definir Los nombre/s de usuario y contraseñas
- [ ] Proceguir con la instalacion

# Post Instalacion

- [ ] Verificar que la instalacion este sin errores
- [ ] En caso de tener entorno grafico que este cargue
- [ ] verificar que se pueda acceder a debian con los usuarios y credenciales previamente definidos durante la instalacion
- [ ] descargar programas y funciones que vayamos a utilizar  

