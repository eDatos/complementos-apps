# Complementos Apps
## /portal/default/header.html
Cabecera usada por el visualizador estadístico. Para mostrar migas en ella, habría que añadir los parámetros enlace y miga, por ejemplo:

    http://localhost:8080/complementos-apps/portal/default/header.jsp?enlace=http://domain.com?nivel1|http://domain.com?nivel2&miga=nivel1|nivel2

## Descarga de recursos

Los contenidos de la carpeta external/gobcan replican tal cual los recursos externos que usamos, siguiendo la misma estructura.

Así, tenemos que los archivos:

    https://www.gobiernodecanarias.org/istac/resources/css/istac.css
    http://www.gobiernodecanarias.org/gcc/css/basico.css

Son descargados y servidos desde:

    external/gobcan/istac/resources/css/istac.css
    external/gobcan/gcc/css/basico.css

No deben ser modificados a mano, en su lugar revisar los archivos a descargar desde scripts/update-external-resources y usar en su lugar `npm run update-external-resources`, que descargará los recursos. Han de subirse al repo, para evitar problemas de indisponibilidad.

Servirlos aquí nos permite controlar los tiempos a la hora de actualizar los estilos, y evitar problemas de indisponibilidad.

*!OJO!* Este método es una ayuda, es recomendable revisar el contenido de lo descargado, no sea que nos haya guardado una página de error.