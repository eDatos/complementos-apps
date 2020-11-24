------------------------------------------------------------------------------------------
-- EDATOS-3215 - Refactorización del código para que la propiedad organización sea escalable
------------------------------------------------------------------------------------------

-- Normalizamos las cabeceras del portal de agricultura para que cuelguen del mismo sitio que las demás
-- Se puede ejecutar previamente esta consulta para ver que se va a sustituir lo que deseamos
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/visualizer/agricultura/', '/portal/agriculture/') 
FROM TB_DATA_CONFIGURATIONS WHERE CONF_KEY LIKE 'metamac.portal.agriculture.style.%';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/visualizer/agricultura/', '/portal/agriculture/') WHERE CONF_KEY LIKE 'metamac.portal.%.style.%';
