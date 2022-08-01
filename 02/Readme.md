# Reto 2 - Linux - gestión de permisos


1. En un directorio vacío (nuevo), crear 9 archivos (archiv1, archiv2, etc.) utilizando el comando `touch`:
__Se utilizo el comando "for i in {1..9}; do touch archiv$i; done"__

El archivo "archiv8" quedo sin permisos suficientes para ser agregado a escena por git add  por lo cual se modificaron los permisos del ultimo ejercicio para poder realizar el commit.
---

2. Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado Lista_Precios en su directorio /home. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo sea vulnerado porque otros empleados utilizan su equipo al finalizar su turno. Actualmente, Roxs posee una contraseña segura, pero él necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?

## Considere lo siguiente para solucionar el problema.

Para proveer una solución apropiada para restringir accesos no autorizados al archivo, se necesita realizar lo siguiente:

- Identificar las medidas de seguridad a implementarse.
    > Configurar politica de contraseñas como por ejemplo es posible con el modulo PAN y archivos ubicados en "/etc/pam.d/*".
    
- Identificar el tipo de usuarios para quienes los permisos >serán cambiados.
    > Se debe establecer el propietario y el permiso adecuado para el usuario/grupo de cada archivo y carpeta.
- Identificar el tipo de permiso que necesita ser cambiado.
    > Se debe identificar que tipo de acceso brindar, lectura, escritura o ejecucion.
- Verificar los permisos de acceso al archivo.
    > Confirmar que haya quedado bien el permiso

## Resolucion

Archivo a securizar: /home/colaborador1/Lista_Precios

En primera instancia aseguraria el acceso al equipo con una politica de contraseñas que mitige intentos de acceso al archivo o usuario del sistema.

Segundo cambiar el grupo y propietario del archivo al usuario colaborador con el comando "chown colaborador1:colaborador1 /hom/colaborador1/Lista_Precios"

Tercero modificar permisos del archivo Lista_Precios para que solo el propietario pueda leer, modificar y ejecutar con el comando "chmod u=rwx,go= Lista_Precios"







