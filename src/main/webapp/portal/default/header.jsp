<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<fmt:bundle basename="application">
	<div id="contenido" class="container">
		<div id="cabecera">
			<div id="headercontainer">
				<div role="navigation" aria-label="Cabecera">
					<div id="cab_superior">
						<!-- MENU DE AYUDA -->
						<ul>
							<li class="bypass-blocks"><a href="#centercontainer"
									title="Salta contenido repetido y le sit&uacute;a en el bloque principal de la p&aacute;gina">Ir
									al contenido principal</a></li>
							<li><a href="https://sede.gobcan.es/hpae/" target="" accesskey="e"
									title="Acceso a la sede electrónica de la Consejería de Hacienda, Presupuestos y Asuntos Europeos">Sede
									electrónica</a>|</li>
							<li><a href="<fmt:message key='web_istac_base.url' />/servicios/atencion.html" target=""
									accesskey="o" title="Acceso al apartado de atención ciudadana">Contacto</a></li>
						</ul>
						<div class="cleared"></div>
					</div>
					<!-- IMAGEN GOBIERNO DE CANARIAS -->
					<h1 class="logo">
						<a href="<fmt:message key='web_istac_base.url' />" target="" accesskey="i"
							title="Página principal del Instituto Canario de Estadística (ISTAC)">Página
							principal del Instituto Canario de Estadística (ISTAC)</a>
					</h1>
					<!-- MENU CONTEXTUAL -->
					<div id="menu_contextual" class="menu_contraido">
						<nav class="navbar navbar-inverse">
							<div class="navbar-header"><button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle
										navigation</span><span class="icon-bar"></span><span
										class="icon-bar"></span><span class="icon-bar"></span></button></div>
							<div class="navbar-collapse navbar-ex1-collapse collapse" aria-expanded="false">
								<ul class="menu nav-menu navbar-nav">
									<li>
										<a href="<fmt:message key='web_istac_base.url' />/estadisticas/" target=""
											accesskey="1" title="Acceso al apartado temas estadísticos">Estadísticas</a>
									</li>
									<li>
										<a href="<fmt:message key='web_istac_base.url' />/istac/" target=""
											accesskey="2"
											title="Acceso al apartado con información sobre el Institito Canario de Estadística">El
											ISTAC</a>
									</li>
									<li>
										<a href="<fmt:message key='web_istac_base.url' />/noticias/" target=""
											accesskey="4"
											title="Acceso al apartado noticias publicadas por el Institito Canario de Estadística">Noticias</a>
									</li>
									<li>
										<a href="<fmt:message key='web_istac_base.url' />/datos-abiertos/" target=""
											accesskey="5"
											title="Acceso al apartado de datos abiertos del Institito Canario de Estadística">Datos
											abiertos</a>
									</li>
									<li>
										<a href="<fmt:message key='web_istac_base.url' />/impacto-covid-19/" target=""
											accesskey="6"
											title="Acceso al apartado de datos de impacto socioeconómico del COVID-19">COVID-19</a>
									</li>
									<!-- FORMULARIO DE BUSQUEDA SI EXISTE APLICATIVO QUE LO SUSTENTE -->
									<li id="formulario_google">
										<form target="_blank" name="gs" method="GET"
											action="<fmt:message key='web_istac_base.url' />/buscador/busca">
											<input type="text" name="userQuery" size="32" maxlength="256" id="cajabusca"
												class="buscar" placeholder="texto de b&uacute;squeda" accesskey="b"
												title="Introduzca el texto de b&uacute;squeda (tecla de acceso: b)" />
											<input type="submit" value="Buscar" class="boton">
											<input type="hidden" name="ambitos" value="" />
											<input type="hidden" name="fqtr" value="" />
											<input type="hidden" name="fbt" value="false" />
										</form>
									</li>
								</ul>
							</div>
						</nav>
					</div>
					<div style="clear:left"></div>
				</div>
			</div>
		</div>
		<div id="banner" role="banner">
			<div id="bannercontainer"></div>
		</div>
		<div id="migas" role="navigation" aria-label="Camino de hormigas">
			<div id="redessocialescontainer">
				<div class="redes_sociales_div">
					<a href="<fmt:message key='web_istac_base.url' />/herramientas/rss.html" title="Canal de Rss"
						target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/external/gobcan/gcc/img/iconos/rss_20x20.png"
							title="Canal de Rss" alt="Canal de Rss">
					</a>
					<a href="https://twitter.com/istac_es" title="Canal de Twitter" target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/external/gobcan/gcc/img/iconos/twitter_20x20.png"
							title="Canal de Twitter" alt="Canal de Twitter">
					</a>
					<a href="https://www.slideshare.net/ISTAC" title="Canal de Slideshare" target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/external/gobcan/gcc/img/iconos/Slideshare_20x20.png"
							title="Canal de Slideshare" alt="Canal de Slideshare">
					</a>
					<a href="https://www.youtube.com/user/istacES" title="Canal de Youtube" target="_blank">
						<img src="<fmt:message key='complementos_apps.url' />/external/gobcan/gcc/img/iconos/youtube_20x20.png"
							title="Canal de Youtube" alt="Canal de Youtube">
					</a>

				</div>

			</div>
			<c:if test="${not empty param.miga}">
				<c:import url="migas.jsp">
					<c:param name="texto" value="${param.miga}" />
					<c:param name="enlace" value="${param.enlace}" />
				</c:import>
			</c:if>
		</div>

		<!-- Added functionality from istac header -->
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="<fmt:message key='complementos_apps.url' />/external/gobcan/cmsweb/export/system/modules/es.gobcan.portal.tipo/resources/js/responsive/boton_contraido.js"></script>

</fmt:bundle>