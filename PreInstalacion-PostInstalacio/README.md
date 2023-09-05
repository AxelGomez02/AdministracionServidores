# Checklist Pre-Instalacion del Sistema debian 12


 - [ ] Validar disponibilidad en el Disco
- [ ] Respaldar la informacion 
- [ ] Checar los requsitos de Debian 12
- [ ] Verificar que los requisitos del sistema cunpla con el sistema operativo
- [ ] Preconfigurar el archivo booteable en la memorias USB, en este caso se toma en cuenta que ya hemos descargado el Iso previamente
- [ ] Ajustar el equipo para el arranque en caso de ser neceario
- [ ] En caso de ser necesario Particionar el Disco en el formato deseado
       
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
