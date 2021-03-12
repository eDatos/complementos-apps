-------------------------------------------------------------------------------------------------------------------------------------
-- ATENCIÓN: En este fichero se irán especificando las propiedades que surjan en este proyecto y servirá como fichero de importación
-- inicial. Es importante destacar que, hasta ahora, la definición de estas propiedades para la importación inicial se realizaba en
-- el proyecto common-metadata. Sin embargo, esta manera de definir las propiedades está deprecada y a partir de ahora se utilizará
-- este fichero para el proposito anteriormente comentado.
-------------------------------------------------------------------------------------------------------------------------------------

-- Añadir propiedad con la URL correspondiente al favicon usado en aplicaciones públicas
insert into TB_DATA_CONFIGURATIONS (ID,VERSION,SYSTEM_PROPERTY,CONF_KEY,CONF_VALUE,EXTERNALLY_PUBLISHED) values(GET_NEXT_SEQUENCE_VALUE('DATA_CONFIGURATIONS'), 1, 1, 'metamac.app.style.favicon.url', 'FILL_ME', 1);
-- Ejemplo: insert into TB_DATA_CONFIGURATIONS (ID,VERSION,SYSTEM_PROPERTY,CONF_KEY,CONF_VALUE,EXTERNALLY_PUBLISHED) values(GET_NEXT_SEQUENCE_VALUE('DATA_CONFIGURATIONS'), 1, 1, 'metamac.app.style.favicon.url', 'https://estadisticas.arte-consultores.com/apps/organisations/istac/common/favicon.ico', 1);
UPDATE TB_SEQUENCES SET SEQUENCE_NEXT_VALUE = SEQUENCE_NEXT_VALUE + 1 WHERE SEQUENCE_NAME = 'DATA_CONFIGURATIONS';

commit;