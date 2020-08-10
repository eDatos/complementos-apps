var wget = require('node-wget');
var mkdirp = require('mkdirp');
var path = require('path');
var rimraf = require('rimraf');

const BASE_URL = "https://www.gobiernodecanarias.org/";
const BASE_FOLDER = './src/main/webapp/';
const BASE_PATH = 'external/gobcan/';

rimraf.sync(BASE_FOLDER + BASE_PATH);

const CSS_FILE_LIST = [
    { path: "gcc/css/especifico.css" },
    { path: "gcc/css/voz.css", media: "aural" },
    // { path: "gcc/css/estilos.css" }, // we add directly basico and cuerpo
    { path: "gcc/css/basico.css" },
    { path: "gcc/css/cuerpo.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/imprime.css", media: "print" },
    { path: "istac/resources/css/istac.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_cabecera.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_redes_sociales.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_widget.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_caja_lateral.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/bootstrap.min.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/custom_responsive.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/responsive/custom_bootstrap.css" },
];

CSS_FILE_LIST.forEach((file) => {
    mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
    wget({ url: BASE_URL + file.path, dest: BASE_FOLDER + BASE_PATH + file.path });
    console.log(`@import url('../../${BASE_PATH}${file.path}')${file.media ? ' ' + file.media : ''};`)
});

const RESOURCES_FILE_LIST = [
    { path: "gcc/img/iconos/rss_20x20.png" },
    { path: "gcc/img/iconos/twitter_20x20.png" },
    { path: "gcc/img/iconos/Slideshare_20x20.png" },
    { path: "gcc/img/iconos/youtube_20x20.png" },
    { path: "istac/resources/imagenes/logo_istac.jpg" },
    { path: "gcc/img/maqueta/borde_bajo_migas.gif" },
    { path: "gcc/img/auxis/flecha_amarilla.gif" },
    { path: "gcc/img/listas/flecha_menulat.gif" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js" },
    { path: "gobcan/gcc/img/listas/li3.gif" },
    { path: "gobcan/gcc/img/listas/li2.gif" },
];


RESOURCES_FILE_LIST.forEach((file) => {
    mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
    wget({ url: BASE_URL + file.path, dest: BASE_FOLDER + BASE_PATH + file.path });
    console.log(`Downloaded ${BASE_FOLDER + BASE_PATH + file.path}`)
});
