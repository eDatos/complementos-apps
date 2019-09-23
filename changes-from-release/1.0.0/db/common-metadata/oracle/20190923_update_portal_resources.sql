------------------------------------------------------------------------------------------
-- METAMAC-3014 Mover los contenidos de /servers/estadistica/plantilla al complementos-apps
------------------------------------------------------------------------------------------

UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.default.style.header.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.default.style.css.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.default.style.footer.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.environment.style.header.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.environment.style.css.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.publicservice.style.footer.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.tourism.style.header.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.tourism.style.css.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.tourism.style.footer.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.publicservice.style.header.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.publicservice.style.css.url';
UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'FILL_ME' WHERE CONF_KEY = 'metamac.portal.environment.style.footer.url';

-- Valores de ejemplo/demos

-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/default/header.html' WHERE CONF_KEY = 'metamac.portal.default.style.header.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = '//estadisticas.arte-consultores.com/complementos-apps/portal/default/styles.css' WHERE CONF_KEY = 'metamac.portal.default.style.css.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/default/footer.html' WHERE CONF_KEY = 'metamac.portal.default.style.footer.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/environment/header.html' WHERE CONF_KEY = 'metamac.portal.environment.style.header.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = '//estadisticas.arte-consultores.com/complementos-apps/portal/environment/styles.css' WHERE CONF_KEY = 'metamac.portal.environment.style.css.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/publicservice/footer.html' WHERE CONF_KEY = 'metamac.portal.publicservice.style.footer.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/tourism/header.html' WHERE CONF_KEY = 'metamac.portal.tourism.style.header.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = '//estadisticas.arte-consultores.com/complementos-apps/portal/tourism/styles.css' WHERE CONF_KEY = 'metamac.portal.tourism.style.css.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/tourism/footer.html' WHERE CONF_KEY = 'metamac.portal.tourism.style.footer.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/publicservice/header.html' WHERE CONF_KEY = 'metamac.portal.publicservice.style.header.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = '//estadisticas.arte-consultores.com/complementos-apps/portal/publicservice/styles.css' WHERE CONF_KEY = 'metamac.portal.publicservice.style.css.url';
-- UPDATE TB_DATA_CONFIGURATIONS SET CONF_VALUE = 'http://estadisticas.arte-consultores.com/complementos-apps/portal/environment/footer.html' WHERE CONF_KEY = 'metamac.portal.environment.style.footer.url';

COMMIT;
