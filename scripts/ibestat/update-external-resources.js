var utils = require("../functions/utils");
var rimraf = require('rimraf');

const DEFAULT_PROTOCOL = "https";
const BASE_URL = "://ibestat.caib.es/";
const BASE_FOLDER = './src/main/webapp/';
const BASE_SUBPATH = 'external/'; // relative to organisation
const BASE_PATH = 'organisations/ibestat/' + BASE_SUBPATH;

const CSS_FILE_LIST = [
    { path: "ibestat/theme/ibestat/css/estilos20111130.css" },
    { path: "ibestat/theme/ibestat/css/arte.css" },
    { path: "ibestat/theme/ibestat/css/jquery.treeview.css" },
    { path: "ibestat/theme/ibestat/css/estilos-print.css", media: "print" }
];

const RESOURCES_FILE_LIST = [

    { path: "ibestat/favicon.png" },
    { path: "ibestat/favicon.ico" },
    { path: "ibestat/theme/ibestat/interfaz/ico_print.png" },
    { path: "ibestat/jaxi/js/jquery/jquery-1.2.6.js" },
    { path: "ibestat/js/jquery.cookie.js" },
    { path: "ibestat/js/ibestatcms.js" },
    { path: "ibfiles/content/files/logo.png" },
    { path: "ibestat/theme/ibestat/interfaz/botones/transparent.png" },
    { path: "ibfiles/content/files/logo_govern_buid.png" },
    { path: "ibestat/theme/ibestat/img/header-logo.png" },
    { path: "ibestat/jaxi/js/jquery/jquery-1.2.6.js" },
    { path: "ibestat/theme/ibestat/interfaz/logo_gris_migas.png" },
    { path: "ibestat/theme/ibestat/interfaz/cab_nar_print.png" },
    { path: "ibestat/js/jquery.cookie.js" },
    { path: "ibfiles/content/files/logo_ibestat_peq.png" },
    { path: "ibestat/js/ibestatcms.js" },
    { path: "ibfiles/content/files/conselleria_treball.png" },
    { path: "ibestat/theme/ibestat/interfaz/botones/transparent.png" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Light.ttf" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Light.woff" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Light.woff2" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Medium.ttf" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Medium.woff" },
    { path: "ibestat/theme/ibestat/fonts/Lato-Medium.woff2" },
    { path: "ibestat/theme/ibestat/interfaz/cab_nar_bg_der.png" },
    { path: "ibestat/theme/ibestat/interfaz/cab_nar_bg_repite.png" },
    { path: "ibestat/theme/ibestat/interfaz/ico_sitemap.png" },
    { path: "ibestat/theme/ibestat/interfaz/letras14_17.png" },
    { path: "ibestat/theme/ibestat/interfaz/letras16_19.png" },
    { path: "ibestat/theme/ibestat/interfaz/letras18_21.png" },
    { path: "ibestat/theme/ibestat/interfaz/tropomenu.png" },
    { path: "ibestat/theme/ibestat/interfaz/ico_print.png" },
    { path: "ibfiles/content/carousel/es/lista.xml" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_b.png" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_estad_a.png" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_estad_b.png" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_estad_c.png" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_estad_e.png" },
    { path: "ibestat/theme/ibestat/interfaz/menu_tropo_estad_d.png" },
];


rimraf.sync(BASE_FOLDER + BASE_PATH);
utils.updateCss(CSS_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL, BASE_SUBPATH);
utils.updateResources(RESOURCES_FILE_LIST, BASE_FOLDER, BASE_PATH, DEFAULT_PROTOCOL, BASE_URL);


