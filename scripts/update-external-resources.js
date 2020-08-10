var wget = require('node-wget');
var mkdirp = require('mkdirp');
var path = require('path');

const BASE_URL = "https://www.gobiernodecanarias.org/";
const BASE_FOLDER = './src/main/webapp/';
const BASE_PATH = 'external/gobcan/';
const CSS_FILE_LIST = [
    // { path: "gcc/css/estilos.css" }, // we add directly basico and cuerpo
    { path: "gcc/css/basico.css" },
    { path: "gcc/css/cuerpo.css" },
    { path: "gcc/css/imprime.css", media: "print" },
    { path: "gcc/css/voz.css", media: "aural" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_cabecera.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_redes_sociales.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_widget.css" },
    { path: "cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/css/tipo_caja_lateral.css" },
    { path: "gcc/css/responsive/bootstrap.min.css" },
    { path: "gcc/css/responsive/custom_responsive.css" },
    { path: "gcc/css/responsive/custom_bootstrap.css" },
    { path: "istac/resources/css/istac.css" },
];

CSS_FILE_LIST.forEach((file) => {
    mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
    wget({ url: BASE_URL + file.path, dest: BASE_FOLDER + BASE_PATH + file.path });
    console.log(`@import url('../../${BASE_PATH}${file.path}') ${file.media ? file.media : ''};`)
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
];


RESOURCES_FILE_LIST.forEach((file) => {
    mkdirp.sync(path.dirname(BASE_FOLDER + BASE_PATH + file.path));
    wget({ url: BASE_URL + file.path, dest: BASE_FOLDER + BASE_PATH + file.path });
    console.log(`Downloaded ${BASE_FOLDER + BASE_PATH + file.path}`)
});
