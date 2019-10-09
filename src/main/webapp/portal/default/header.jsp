<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<fmt:bundle basename="application">
	<div id="contenido">
		<div id="cabecera">
			<div id="cab_superior">
				<!-- MENÚ DE AYUDA -->
				<ul>
					<li><a href="https://sede.gobcan.es/hacienda/" target="" accesskey="e" title="Sede electrónica">Sede
							electrónica</a></li>
					<li>|</li>
					<li><a href="/istac/servicios/atencion.html" accesskey="o"
							title="Contacte con nosotros (tecla de acceso: o)">Contacto</a></li>
				</ul>
			</div>
			<!-- IMAGEN ISTAC -->
			<h1><a href="/istac"
					title="Página principal del Instituto Canario de Estadística (ISTAC) - Opciones de accesibilidad (tecla de acceso: i)"
					accesskey="i">Instituto Canario de Estadística</a></h1>

			<!-- begin: #menu -->

			<div id="menu_contextual">
				<ul class="menu">
					<li>
						<a href="/istac/temas_estadisticos/" class="inactive" accesskey="1"
							title="Estadísticas (tecla de acceso: 1)">Estadísticas</a>
					</li>
					<li>
						<a href="/istac/istac/" class="inactive" accesskey="2" title="El ISTAC (tecla de acceso: 2)">El
							ISTAC</a>
					</li>
					<li>
						<a href="/istac/webescolar/" class="inactive" accesskey="3"
							title="Web escolar (tecla de acceso: 3)">Web escolar</a>
					</li>
					<li>
						<a href="/istac/noticias/" class="inactive" accesskey="4"
							title="Noticias (tecla de acceso: 4)">Noticias</a>
					</li>
					<li>
						<a href="/istac/datos-abiertos/" class="inactive" accesskey="5"
							title="Datos abiertos (tecla de acceso: 5)">Datos abiertos</a>
					</li>
				</ul>

				<!-- form name="gs" method="GET" action="http://www.gobiernodecanarias.org/istac/buscador/busca" -->
				<form name="gs" method="GET" action="/istac/buscador/busca">
					<div id="formulario_google" style="padding-top: 1px;">
						<input type="text" id="userQuery" name="userQuery" placeholder="texto de búsqueda"
							class="buscar" value="">
						<input type="submit" name="Buscar" value="Buscar" class="boton">
						<input type="hidden" id="typeResult" name="typeResult" value="">
						<input type="hidden" id="subject_areas_ff" name="subject_areas_ff" value="">
						<input type="hidden" id="survey_title_ff" name="survey_title_ff" value="">
						<input type="hidden" id="coverage_spatial_ff" name="coverage_spatial_ff" value="">
						<input type="hidden" id="coverage_temporal_ff" name="coverage_temporal_ff" value="">
						<input type="hidden" id="formato" name="formato" value="">
						<input type="hidden" id="ff_select" name="ff_select" value="">
						<input type="hidden" id="sort" name="sort" value="">
					</div>
				</form>
			</div>
			<!-- end: #menu -->
		</div>
		<div id="migas">
			<c:if test="${not empty param.miga}">
				<c:import url="migas.jsp">
					<c:param name="texto" value="${param.miga}" />
					<c:param name="enlace" value="${param.enlace}" />
				</c:import>
			</c:if>
			<div class="redes_sociales">
				<a href="http://www.gobiernodecanarias.org/istac/herramientas/rss.html" accesskey="r"
					title="Canales RSS (tecla de acceso: r)">
					<img src="<fmt:message key=" complementos_apps.url" />/assets/img/icons/rss_20x20.png"
					title="Canales RSS (tecla de acceso: r)" alt="Canales RSS (tecla de acceso: r)">
				</a>
				<a href="http://www.gobiernodecanarias.org/istac/twitter" accesskey="t"
					title="Seguir a istac_es en Twitter (tecla de acceso: t)">
					<img src="<fmt:message key=" complementos_apps.url" />/assets/img/icons/twitter_20x20.png"
					title="Seguir a istac_es en Twitter (tecla de acceso: t)" alt="Seguir a istac_es en Twitter (tecla
					de acceso: t)">
				</a>
				<a href="https://www.slideshare.net/ISTAC" accesskey="s"
					title="Seguir a ISTAC en Slideshare (tecla de acceso: s)">
					<img src="<fmt:message key=" complementos_apps.url" />/assets/img/icons/Slideshare_20x20.png"
					title="Seguir a ISTAC en Slideshare (tecla de acceso: s)" alt="Seguir a ISTAC en Slideshare (tecla
					de acceso: s)">
				</a>
				<a href="https://www.youtube.com/user/istacES" accesskey="y"
					title="Seguir a ISTAC en Youtube (tecla de acceso: y)">
					<img src="<fmt:message key=" complementos_apps.url" />/assets/img/icons/youtube_20x20.png"
					title="Seguir a ISTAC en Youtube (tecla de acceso: y)" alt="Seguir a ISTAC en Youtube (tecla de
					acceso: y)">
				</a>
				<a href="https://public.tableau.com/profile/istac#!/" accesskey="s"
					title="Seguir a ISTAC en Tableau (tecla de acceso: u)">
					<img src="<fmt:message key=" complementos_apps.url" />/assets/img/icons/tableau_20.png"
					title="Seguir a ISTAC en Tableau (tecla de acceso: u)" alt="Seguir a ISTAC en Tableau (tecla de
					acceso: u)">
				</a>
			</div>
		</div>
</fmt:bundle>