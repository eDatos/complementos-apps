------------------------------------------------------------------------------------------
-- EDATOS-3215 - Refactorización del código para que la propiedad organización sea escalable
------------------------------------------------------------------------------------------

-- Normalizamos las cabeceras del portal de agricultura para que cuelguen del mismo sitio que las demás
-- Se puede ejecutar previamente esta consulta para ver que se va a sustituir lo que deseamos
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/visualizer/agricultura/', '/portal/agriculture/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_KEY LIKE 'metamac.portal.agriculture.style.%';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/visualizer/agricultura/', '/portal/agriculture/') WHERE CONF_KEY LIKE 'metamac.portal.agriculture.style.%';

-- Movemos las rutas afectadas por el refactor, desde /portal/ hasta /organisations/istac/portal/
-- Se puede ejecutar previamente esta consulta para ver que se va a sustituir lo que deseamos
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/portal/', '/organisations/istac/portal/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_KEY LIKE 'metamac.portal.%.style.%';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/portal/', '/organisations/istac/portal/') WHERE CONF_KEY LIKE 'metamac.portal.%.style.%';


-- Se puede ejecutar previamente esta consulta para ver que se va a sustituir lo que deseamos
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/apis/', '/organisations/istac/apis/header/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_KEY LIKE 'metamac.api.style.css.url';
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/apis/', '/organisations/istac/apis/header/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_KEY LIKE 'metamac.api.style.header.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/apis/', '/organisations/istac/apis/header/') WHERE CONF_KEY LIKE 'metamac.api.style.css.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/apis/', '/organisations/istac/apis/header/') WHERE CONF_KEY LIKE 'metamac.api.style.header.url';

-- Se puede ejecutar previamente esta consulta para ver que se va a sustituir lo que deseamos
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/apps/header/', '/organisations/istac/common/header/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_VALUE LIKE '%/apps/header/%';
-- SELECT CONF_KEY, CONF_VALUE, replace(CONF_VALUE, '/apps/footer/', '/organisations/istac/common/footer/') FROM TB_DATA_CONFIGURATIONS WHERE CONF_VALUE LIKE '%/apps/footer/%';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/apps/header/', '/organisations/istac/common/header/') WHERE CONF_VALUE LIKE '%/apps/header/%';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = replace(CONF_VALUE, '/apps/footer/', '/organisations/istac/common/footer/') WHERE CONF_VALUE LIKE '%/apps/footer/%';

COMMIT;
