/* Funcion para carga un Javascript bajo demanda */
function loadScript(url, callback, cargaAsincrona)
{
    // alert("Cargando script  " + url);
    // Adding the script tag to the head as suggested before
    var head = document.getElementsByTagName('head')[0];
    var script = document.createElement('script');
    var isLoadedOnreadystatechange = false;
    script.type = 'text/javascript';
    script.src = url;
    script.async= false; 
	script.defer= true;
	
	if (cargaAsincrona && cargaAsincrona==true){
		script.async= true; 
	}
	

    // Then bind the event to the callback function.
    // There are several events for cross browser compatibility.
	if (callback)	{
	    script.onload = callback;
		if(typeof document.attachEvent === "object"){
			 //if this is IE8 and below, handle onload differently		 
			 try  {
				script.onreadystatechange = function() {
				   if ((script.readyState == 'complete' || script.readyState == 'loaded') && !isLoadedOnreadystatechange) {		
					   isLoadedOnreadystatechange = true;
                       if (callback) callback();
				   }	   
				}				
			 } catch (err) {				
			 }		
		}
	}

    // Fire the loading
    head.appendChild(script);	
}


/* Callback de la carga del javascript xxxx_estadisticas.js */
var onLoadWeborama = function() {
	// Aqu√≠ se ha cargado el fichero xxxx_estadisticas.js	
	// alert("wreport_ok=" + wreport_ok);

	// Llamar al c√≥digo de estad√≠sticas del proveedor
	// WREPORT COPYRIGHT WEBORAMA
	if(wreport_ok==1) { 
	    // alert("WRP_ID=" + WRP_ID + " | WRP_SECTION=" + WRP_SECTION + " | WRP_SUBSECTION=" + WRP_SUBSECTION);
		var w_counter = new wreport_counter(WRP_SECTION, WRP_SUBSECTION, WRP_ID, WRP_ACC, WRP_CHANNEL, WRP_SECTION_GRP, WRP_SUBSECTION_GRP);
		// alert("WRP_CONTENT=" + WRP_CONTENT);
	    w_counter.add_content(WRP_CONTENT);
        w_counter.count();
	}

}

/* Callback de la carga del javascript xxxx_estadisticas.js */
/* Llamada a piwik*/
var onLoadPiwik = function() {
	/* AÒadimos las propiedades de configuraciÛn de la parametrizaciÛn */
	/* Esto es para que mida las p·ginas*/
	_paq.push(['trackPageView']);
	/* Esto es para que mida los enlaces */
	_paq.push(['enableLinkTracking']);
	/* Asigna la URL de tracking */
	_paq.push(['setTrackerUrl', u+'piwik.php']);
	/* Asigna el ID del site a medir */
	_paq.push(['setSiteId', PIWIK_ID]);
//	console.log("PIWIK_ID: "+PIWIK_ID);
}

/* Funci√≥n a llamar cuando se hace un click */
function ma_click(nivel1, nivel2, nivel3) {
	wreport_click('#', nivel1, nivel2, XXXX, 0, nivel3);
	return true;
}

/******* INICIO Carga del script de estad√≠sticas del proveedor *******/
var WRP_ACC;
wreport_ok=0;

/* Definimos una variable de propiedades que ser· utilizada en piwik.js */
var _paq = _paq || [];
var PIWIK_ID;
/* La URL base donde se encuentra piwik */
var u="//estadisticas.madrid.org/piwik/";
piwik_ok=1;

try {
	// Cargamos js de wreports
    //loadScript("//www.madrid.org/webutils/wreport.js");
	/******* FIN Carga del script de estad√≠sticas del proveedor *******/

	/* Carga de fichero espec√≠fico de la aplicacion xxxx_estadisticas.js y pasamos funcion de callback */
	loadScript("/webutils/" + ma_codapp +"_audiencias.js");

	// Cargamos js de piwik. Le pasamos true pare que lo cargue asÌncronamente
	loadScript("/webutils/piwik.js",onLoadPiwik ,null,true);
	
	/* Carga de fichero espec√≠fico de la aplicacion xxxx_estadisticas.js y pasamos funcion de callback */
	loadScript("/webutils/" + ma_codapp +"_audiencias.js", onLoadPiwik);

}catch (err){
	console.log("Error: "+err);
}