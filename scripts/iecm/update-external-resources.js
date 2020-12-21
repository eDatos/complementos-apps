var utils = require("../functions/utils");
var rimraf = require('rimraf');

const DEFAULT_PROTOCOL = "https";
const BASE_URL = "://www.madrid.org/";
const BASE_FOLDER = './src/main/webapp/';
const BASE_SUBPATH = 'external/'; // relative to organisation
const BASE_PATH = 'organisations/iecm/' + BASE_SUBPATH;

const CSS_FILE_LIST = [
    { path: "iestadis/css/normalize.css" },
    { path: "iestadis/css/styles.css" }
];

const RESOURCES_FILE_LIST = [
    { path: "iestadis/js/vendor/jquery-1.11.1.min.js" },
    { path: "iestadis/js/vendor/modernizr-2.7.1.min.js" },
    { path: "iestadis/js/vendor/jquery.jcarousel.min.js" },
    { path: "iestadis/js/vendor/jquery-ui-1.10.4.custom.min.js" },
    { path: "iestadis/js/vendor/jquery.placeholder.js" },
    { path: "iestadis/js/vendor/jquery.ellipsis.min.js" },
    { path: "iestadis/js/vendor/jquery.accessiblefocus-0.0.1.js" },
    { path: "iestadis/js/main.js" },
    { path: "iestadis/img/logo.jpg" },
    { path: "iestadis/img/buscar.jpg" },
    { path: "iestadis/img/atencion-ciudadano.png" },
    { path: "iestadis/img/punto.gif" },
    { path: "iestadis/img/banderaesp.gif" },
    { path: "iestadis/img/comunidad-madrid.bmp" },
    { path: "iestadis/img/banderachi.gif" },
    { path: "iestadis/img/flagingl-redonda-22.jpg" },
    { path: "webutils/medicion_audiencias.js" },
    { path: "webutils/piwik.js" },
    { path: "webutils/IESTADIS_audiencias.js" },
    { path: "iestadis/img/validation.gif" },
    { path: "iestadis/img/ico-englishFlag.jpg" },
    { path: "iestadis/img/ico-rss.jpg" },
];


rimraf.sync(BASE_FOLDER + BASE_PATH);
utils.updateCss(CSS_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL, BASE_SUBPATH);
utils.updateResources(RESOURCES_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL);


