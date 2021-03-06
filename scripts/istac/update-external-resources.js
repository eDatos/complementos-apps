var utils = require("../functions/utils");
var rimraf = require('rimraf');

const DEFAULT_PROTOCOL = "https";
const BASE_URL = "://www.gobiernodecanarias.org/";
const BASE_FOLDER = './src/main/webapp/';
const BASE_SUBPATH = 'external/'; // relative to organisation
const BASE_PATH = 'organisations/istac/' + BASE_SUBPATH;

const CSS_FILE_LIST = [
    { path: "gcc/css/especifico.css" },
    { path: "gcc/css/voz.css", media: "aural" },
    // { path: "gcc/css/estilos.css" }, // we add directly basico and cuerpo
    { path: "gcc/css/basico.css" },
    { path: "gcc/css/cuerpo.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/imprime.css", media: "print" },
    // cmsweb/export/system/modules/es.gobcan.portal.tipo/assets/jquery-ui/jquery-ui.css"
    // cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/custom.css?dc=20191126
    { path: "istac/resources/css/istac.css", service: ["istac"] },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_cabecera.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_redes_sociales.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_widget.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_caja_lateral.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_banner.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/bootstrap.min.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/custom_responsive.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/custom_bootstrap.css" },
];

const RESOURCES_FILE_LIST = [
    // default - istac
    { path: "gcc/img/favicon.ico" },
    { path: "gcc/img/iconos/rss_20x20.png" },
    { path: "gcc/img/iconos/twitter_20x20.png" },
    { path: "gcc/img/iconos/Slideshare_20x20.png" },
    { path: "gcc/img/iconos/youtube_20x20.png" },
    { path: "cmsweb/export/system/modules/es.gobcan.istac.web/resources/images/tableau_20.png" },
    { path: "istac/resources/imagenes/logo_istac.jpg" },
    { path: "gcc/img/maqueta/borde_bajo_migas.gif" },
    { path: "gcc/img/auxis/flecha_amarilla.gif" },
    { path: "gcc/img/listas/flecha_menulat.gif" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js" },
    { path: "gcc/img/listas/li3.gif" },
    { path: "gcc/img/listas/li2.gif" },
    // agricultura
    { path: "gcc/img/logos/cagp.jpg" },
    { path: "gcc/img/logos/logo.gif" },
    { path: "gcc/img/iconos/facebook_20x20.png" },
    { path: "gcc/img/iconos/youtube_20x20.png" },
    // funcion publica
    { path: "gcc/img/logos/cpj.gif" },
    // medioambiente
    { path: "cmsgobcan/export/sites/medioambiente/galerias/banners/2_sostenibilidad_591x92.png" },
    { path: "cmsgobcan/export/sites/medioambiente/galerias/banners/banner_derecho_151x95_medio_ambiente.png" },
    { path: "cmsgobcan/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.cycle.all.js" },
    { path: "gcc/img/logos/ctelccpt.jpg" },
    // turismo
    { path: "gcc/img/logos/ctcd.gif" },
    { path: "cmsgobcan/export/sites/turismo/galerias/logos/08TURI.png", protocol: "http" },
    { path: "cmsgobcan/export/sites/turismo/galerias/imagenes/Banners/cabecera_1.png", protocol: "http" },
];

rimraf.sync(BASE_FOLDER + BASE_PATH);
utils.updateCss(CSS_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL, BASE_SUBPATH);
utils.updateResources(RESOURCES_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL);


