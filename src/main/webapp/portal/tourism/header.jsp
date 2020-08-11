<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<fmt:bundle basename="application">
	<div id="contenido" class="container">
		<div id="cabecera">
			<div id="headercontainer">
				<div>
					<div id="cab_superior">
						<!-- MENU DE AYUDA -->
						<ul>
							<li><a href="http://www.gobcan.es/es/accesibilidad.html" target="_blank"
									accesskey="Accesibilidad (tecla de acceso: a)"
									title="Accesibilidad">Accesibilidad</a>|
							</li>
							<li><a href="http://www.gobiernodecanarias.org/turismo/mapa_web/" target=""
									accesskey="índice de contenidos (tecla de acceso: m)" title="Mapa web">Mapa web</a>|
							</li>
							<li><a href="http://www.gobiernodecanarias.org/turismo/contacto/" target=""
									accesskey="Contacte con nosotros (tecla de acceso: o)" title="Contacto">Contacto</a>
							</li>
						</ul>
					</div>
					<!-- IMAGEN GOBIERNO DE CANARIAS -->
					<h1 class="logo">
						<a href="http://www.gobiernodecanarias.org" target="" accesskey="i"
							title="Página principal del Gobierno de Canarias - Opciones de accesibilidad (tecla de acceso: i)">Gobierno
							de Canarias</a>
					</h1>
					<!-- IMAGEN ENTIDAD -->
					<h2>
						<!-- TODO Recurso http -->
						<img style="vertical-align:middle"
							ssrc="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsgobcan/export/sites/ctcd/galerias/logos/ctcd.gif"
							alt="">
					</h2>
					<!-- IMAGEN ENTIDAD 2 -->
					<!-- MENU CONTEXTUAL -->
					<div id="menu_contextual">
						<ul class="menu">
							<li><a href="http://www.gobiernodecanarias.org/turismo/temas/index.html" target=""
									accesskey="" title="Temas (AccesKey: t)">TEMAS</a></li>
							<li><a href="http://www.gobiernodecanarias.org/turismo/preguntas_frecuentes/index.html"
									target="" accesskey="" title="">PREGUNTAS FRECUENTES</a></li>
							<li><a href="http://www.gobiernodecanarias.org/noticias/tcd/Turismo" target="_blank"
									accesskey="Portal de Noticias del Gobierno de Canarias (Turismo)"
									title="Portal de Noticias del Gobierno de Canarias (Turismo)">NOTICIAS</a></li>
						</ul>
						<!-- BUSCADOR -->
					</div>
					<div style="clear:left"></div>
				</div>
			</div>
		</div>
		<!-- TODO Recurso http -->
		<img class="banner" title=""
			ssrc="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsgobcan/export/sites/turismo/galerias/imagenes/Banners/cabecera_1.png"
			alt="" style="z-index: 4; width: 765px; height: 95px;">

		<!-- Added functionality from header -->
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js"></script>

</fmt:bundle>