# UPGRADE - Proceso de actualización entre versiones

*Para actualizar de una versión a otra es suficiente con actualizar el WAR a la última versión. El siguiente listado presenta aquellos cambios de versión en los que no es suficiente con actualizar y que requieren por parte del instalador tener más cosas en cuenta. Si el cambio de versión engloba varios cambios de versión del listado, estos han de ejecutarse en orden de más antiguo a más reciente.*

*De esta forma, si tuviéramos una instalación en una versión **A.B.C** y quisieramos actualizar a una versión posterior **X.Y.Z** para la cual existan versiones anteriores que incluyan cambios listados en este documento, se deberá realizar la actualización pasando por todas estas versiones antes de poder llegar a la versión deseada.*

*EJEMPLO: Queremos actualizar desde la versión 1.0.0 a la 3.0.0 y existe un cambio en la base de datos en la actualización de la versión 1.0.0 a la 2.0.0.*

*Se deberá realizar primero la actualización de la versión 1.0.0 a la 2.0.0 y luego desde la 2.0.0 a la 3.0.0*

## 3.3.0 a x.Y.z
* Se añade la propiedad nueva semastat.web_principal.url y se le da soporte a semastat como organización
* Desaparece la propiedad de configuración istac\_apis\_base.url
    * En su lugar, se añaden tantas propiedades como apis dentro del listado /api. Esto permite dejar vacías aquellas propiedades que no interesa sean visibles en el listado. Las propiedades son:

    indicators.rest.external=FILL_ME
    metamac.statistical_resources.rest.external=FILL_ME
    metamac.srm.rest.external=FILL_ME
    metamac.statistical_operations.rest.external=FILL_ME
    metamac.sdmx.registry.rest.external=FILL_ME
    metamac.common_metadata.rest.external=FILL_ME
    metamac.portal.rest.external.export=FILL_ME
    callejero.rest.external=FILL_ME
    metamac.portal.rest.external.permalinks=FILL_ME

## 0.0.0 a 3.2.0
* El proceso de actualizaciones entre versiones para versiones anteriores a la 3.2.0 está definido en "Metamac - Manual de instalación.doc"
