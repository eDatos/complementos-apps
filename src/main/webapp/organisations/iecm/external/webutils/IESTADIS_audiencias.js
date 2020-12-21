// Definición de las variables específicas de la aplicación de WEBORAMA
var PIWIK_ID= 124;
var WRP_ID= 477107;
var WRP_SECTION='-';
var WRP_SUBSECTION='-';
var WRP_SECTION_GRP= WRP_ID;
var WRP_SUBSECTION_GRP= WRP_SECTION;
var WRP_CONTENT= '';
var WRP_CHANNEL= '';
// --- Fin de la Definición de las variables específicas de la aplicación de WEBORAMA

if (typeof(ma_nivel1) != "undefined")
{
	WRP_SECTION= ma_nivel1;
	WRP_SUBSECTION_GRP= WRP_SECTION;
}

if (typeof(ma_nivel2) != "undefined")
{
	WRP_SUBSECTION= ma_nivel2;
}


if (typeof(ma_nivel3) != "undefined")
{
	WRP_CONTENT= ma_nivel3;
}
else
{
 // Si no se pasa variable ma_nivel3 se extrae el nombre de la pagina
 var ma_url = window.location.href;
 var ma_arrUrl = ma_url.split("/");
 var ma_pagina = ma_arrUrl[ma_arrUrl.length-1].split("?")[0];
 WRP_CONTENT = ma_pagina;
}
