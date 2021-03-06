<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<fmt:bundle basename="application">
	<link href="<fmt:message key='complementos_apps.url' />/organisations/istac/external/gcc/img/favicon.ico"
		rel="shortcut icon" />
	<!-- TODO habría que tomar una decisión sobre este condicional -->
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" href="//www.gobiernodecanarias.org/gcc/css/ie.css" />
	<![endif]-->
	<!-- Added functionality from header -->
	<script type="text/javascript"
		src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js"></script>
	<script type="text/javascript"
		src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsgobcan/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.cycle.all.js"></script>

	<div id="contenido" class="container">
		<div id="cabecera">
			<div id="headercontainer">
				<div role="navigation" aria-label="Cabecera">
					<div id="cab_superior">
						<!-- MENU DE AYUDA -->
						<ul>
							<li class="bypass-blocks"><a href="#centercontainer"
									title="Salta contenido repetido y le sitúa en el bloque principal de la página">Ir
									al
									contenido principal</a></li>
							<li><a href="https://www.gobiernodecanarias.org/principal/accesibilidad.html" target=""
									accesskey="" title="">Accesibilidad</a>|
							</li>
							<li><a href="https://www.gobiernodecanarias.org/medioambiente/mapa_web/" target=""
									accesskey="índice de contenidos (tecla de acceso: m)" title="Mapa web">Mapa web</a>|
							</li>
							<li><a href="https://www.gobiernodecanarias.org/siac/oficinas/buzon/servlet/buzon" target=""
									accesskey="" title="-">Contacto</a></li>
						</ul>
						<div class="cleared"></div>
					</div>
					<!-- IMAGEN GOBIERNO DE CANARIAS -->

					<h1 class="logo">
						<a href="http://www.gobiernodecanarias.org" target="" accesskey=""
							title="Página principal del Gobierno de Canarias - Opciones de accesibilidad (tecla de acceso: i)">Gobierno
							de Canarias</a>
					</h1>
					<!-- IMAGEN ENTIDAD -->
					<h2 class="cons-ctelccpt">
						<a href="https://www.gobiernodecanarias.org/telccpt/" target="" accesskey=""
							title="Consejería de Transición Ecológica, Lucha contra el Cambio Climático y Planificación Territorial">Consejería
							de Transición Ecológica, Lucha contra el Cambio Climático y Planificación Territorial</a>
					</h2>
					<!-- IMAGEN ENTIDAD 2 -->
					<!-- MENU CONTEXTUAL -->
					<div id="menu_contextual" class="menu_contraido">
						<nav class="navbar navbar-inverse">
							<div class="navbar-header"><button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle
										navigation</span><span class="icon-bar"></span><span
										class="icon-bar"></span><span class="icon-bar"></span></button></div>
							<div class="navbar-collapse navbar-ex1-collapse collapse" aria-expanded="false">
								<ul class="menu nav-menu navbar-nav">
									<li><a href="https://www.gobiernodecanarias.org/telccpt/" target="" accesskey=""
											title="">Inicio</a></li>
									<li><a href="https://www.gobiernodecanarias.org/organigrama/?ou=38218" target=""
											accesskey="" title="Organigrama">Organigrama</a></li>
									<li><a href="https://www3.gobiernodecanarias.org/noticias/category/consejeria-transicion-ecologica-lucha-contra-el-cambio-climatico-y-planificacion-territorial/lucha-contra-el-cambio-climatico/"
											target="_blank" accesskey="" title="Noticias">Noticias</a></li>
								</ul>
							</div>
						</nav>
					</div>
					<div style="clear:left"></div>
				</div>
			</div>
		</div>
		<div id="banner" role="banner">
			<div id="bannercontainer">
				<div id="anuncio">
					<div style="position:relative">
						<noscript>
							<style type="text/css">
								.banner_grande_doble {
									display: none;
								}

								.banner_grande_doble_texto {
									display: none;
								}

								.banner_pequeno_doble {
									display: none;
								}

								.banner_pequeno_doble_texto {
									display: none;
								}

								.banner_grande_simple {
									display: none;
								}

								.banner_grande_simple_texto {
									display: none;
								}
							</style>
							<p>Usted tiene javascript desactivado por lo que algunos elementos de la p&aacute;gina puede
								que
								no funcionen correctamente.</p>
						</noscript>
						<div id="banner_grande_doble_texto" class="banner_grande_doble_texto">
						</div>
						<div id="banner_grande_doble" class="banner_grande_doble">
							<img class="banner" title="Medio Ambiente"
								src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsgobcan/export/sites/medioambiente/galerias/banners/2_sostenibilidad_591x92.png"
								alt="Medio Ambiente">
						</div>
						<div id="banner_pequeno_doble_texto" class="banner_pequeno_doble_texto">
						</div>
						<div id="banner_pequeno_doble" class="banner_pequeno_doble">
							<img class="banner" title="Medio Ambiente"
								src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsgobcan/export/sites/medioambiente/galerias/banners/banner_derecho_151x95_medio_ambiente.png"
								alt="Medio Ambiente">
						</div>
						<script>
							$(document).ready(function () {
								$('#banner_grande_doble, #banner_grande_doble_texto, #banner_grande_doble_botton, #banner_pequeno_doble, #banner_pequeno_doble_texto, #banner_grande_simple, #banner_grande_simple_texto, #banner_grande, #banner_pequeno').cycle({
									fx: 'fade',

									cleartypeNoBg: true
								});
							});
						</script>
					</div>
				</div>
			</div>
		</div>
		<div id="migas" role="navigation" aria-label="Camino de hormigas">
			<div id="redessocialescontainer"></div>
			<p class="txt">Está en:</p>
			<ul>
				<li><strong>Portal Medio Ambiente</strong></li>
			</ul>
		</div>
</fmt:bundle>