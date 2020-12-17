<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<fmt:bundle basename="application">
	<!-- TODO habría que tomar una decisión sobre este condicional -->
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" href="//www.gobiernodecanarias.org/gcc/css/ie.css" />
	<![endif]-->
	<link href="<fmt:message key='complementos_apps.url' />/organisations/istac/external/gcc/img/favicon.ico"
		rel="shortcut icon" />

	<!-- BLOQUE de CONTENIDO -->
	<div id="contenido" class="container">
		<div id="cabecera">
			<div id="headercontainer">
				<div role="navigation" aria-label="Cabecera">
					<div id="cab_superior">
						<!-- MENU DE AYUDA -->
						<ul>
							<li><a href="https://www.gobiernodecanarias.org/principal/accesibilidad.html"
									target="_blank" accesskey="" title="Accesibilidad">Accesibilidad</a>|</li>
							<li><a href="https://www.gobiernodecanarias.org/agp/sgt/temas/informate_participa/"
									target="_blank" accesskey="" title="Contacto">Contacto</a></li>
						</ul>
						<div class="cleared"></div>
					</div>
					<!-- IMAGEN GOBIERNO DE CANARIAS -->
					<h1 class="logo">
						<a href="https://www.gobiernodecanarias.org/principal/" target="" accesskey=""
							title="Gobierno de Canarias">Gobierno de Canarias</a>
					</h1>
					<!-- IMAGEN ENTIDAD -->
					<h2 class="cons-cagp">
						<a href="https://www.gobiernodecanarias.org/agp/" target="" accesskey=""
							title="Consejería de Agricultura, Ganadería y Pesca"></a>
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
									<li><a href="https://www.gobiernodecanarias.org/agp/" target="" accesskey=""
											title="INICIO">INICIO</a></li>
									<li><a href="https://www.gobiernodecanarias.org/agp/consejeria/" target=""
											accesskey="" title="LA CONSEJERÍA">LA CONSEJERÍA</a></li>
									<li><a href="https://sede.gobcan.es/agp/" target="" accesskey=""
											title="SEDE ELECTRÓNICA">SEDE ELECTRÓNICA</a></li>
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
						<div id="banner_grande_simple_texto" class="banner_grande_simple_texto">
						</div>
						<div id="banner_grande_simple" class="banner_grande_simple">
							<img class="banner" title="Agricultura"
								src="https://www.gobiernodecanarias.org/cmsgobcan/export/sites/agricultura/galerias/imagenes/img_agricultura.jpg"
								alt="Agricultura">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="migas" role="navigation" aria-label="Camino de hormigas">
			<div id="redessocialescontainer">
				<div class="redes_sociales_div">
					<a href="https://www.facebook.com/AgriculturaGobcan" title="Canal de Facebook" target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/gcc/img/iconos/facebook_20x20.png"
							title="Canal de Facebook" alt="Canal de Facebook">
					</a>
					<a href="https://twitter.com/AGRI_Gobcan" title="Canal de Twitter" target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/gcc/img/iconos/twitter_20x20.png"
							title="Canal de Twitter" alt="Canal de Twitter">
					</a>
					<a href="https://www.youtube.com/channel/UCWyhkKntD0rQpUxgtC_wrPw" title="Canal de Youtube"
						target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/gcc/img/iconos/youtube_20x20.png"
							title="Canal de Youtube" alt="Canal de Youtube">
					</a>
				</div>
			</div>
			<p class="txt">Está en:</p>
			<ul>
				<li><strong>Estadística</strong></li>
			</ul>
		</div>


		<!-- Added functionality from header -->
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/organisations/istac/external/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js"></script>

</fmt:bundle>