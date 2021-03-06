<!doctype html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");  
  pageContext.setAttribute("appStyleHeaderUrl", resource.getString("metamac.app.style.header.url"));
  pageContext.setAttribute("appStyleFooterUrl", resource.getString("metamac.app.style.footer.url"));
  
  pageContext.setAttribute("terriaUrl", resource.getString("terria.url"));
  pageContext.setAttribute("laPalmaVolcanUrl", resource.getString("la-palma-volcan.url"));
  pageContext.setAttribute("odsUrl", resource.getString("ods.url"));
  pageContext.setAttribute("sieUrl", resource.getString("sie.url"));
  pageContext.setAttribute("operacionesEstadisticasUrl", resource.getString("operaciones_estadisticas.url"));
  pageContext.setAttribute("datosAbiertosUrl", resource.getString("datos_abiertos.url"));
  pageContext.setAttribute("catalogoApisUrl", resource.getString("catalogo_apis.url"));
  pageContext.setAttribute("encuestasUrl", resource.getString("encuestas.url"));
  pageContext.setAttribute("profesionalesTurismoUrl", resource.getString("profesionales_turismo.url"));  

%>
<fmt:bundle basename="application">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>Aplicaciones</title>
		<link rel="icon" href="<fmt:message key="complementos_apps.url"/>/assets/img/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="<fmt:message key="complementos_apps.url"/>/apps/assets/css/vendor/bootstrap-grid.min.css" />
	</head>
	<body>
		<style>
			body {
				min-height: 100%;
				display: flex;
				flex-direction: column;
			}
			.main, .main * {
				box-sizing: border-box;
			}
			
			.main {
				min-height: 100%;
				width: 100%;
				display: flex;
				align-items: center;
				font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
				font-weight: 300;
				padding-top: 5px;
				padding-bottom: 5px;
				flex: 1;
			}
			
			.main a {
				text-decoration: none;
				color: inherit;
			}

			.list-apps {
				list-style: none;
				padding: 0;
			}
			.list-apps .list-app {
				max-width: 350px;
			}

			.list-app .app-image {
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
				height: 160px;
			}
			
			.list-app.terria-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/maps.jpg");
			}

			.list-app.sie-app .app-image  {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/vote.jpg");
			}
			
			.list-app.operaciones-estadisticas-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/statistics-operations.jpg");
			}
			
			.list-app.estadistica-geoespacial-app .app-image  {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/geospatial-statistics.jpg");
			}
			
			.list-app.apis-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/apis.jpg");
			}
			
			.list-app.datos-abiertos-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/open-data.jpg");
			}

			.list-app.encuestas-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/survey.jpg");
			}
			
			.list-app.profesionales_turismo-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/tourism.jpg");
			}

			.list-app.ods-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/ods.jpg");
			}

			.list-app.la-palma-volcan-app .app-image {
				background-image: url("<fmt:message key="complementos_apps.url"/>/apps/assets/img/la-palma-volcan.jpg");
			}

			.list-app .app-name {
				color: #0072A2;
				margin-top: 15px;
				margin-bottom: 0;
				font-size: 1.3em;
				font-weight: 500;
			}

			.list-app .app-description {
				margin-top: 8px;
			}

		</style>

        <c:import url='${appStyleHeaderUrl}'>
            <c:param name="appName" value="Inventario de aplicaciones" />                   
        </c:import>
		<div class="main">
			<div class="container">
				<ul class="list-apps row justify-content-left">
                    <c:if test="${not empty laPalmaVolcanUrl}">
    					<li class="col-sm-6 col-md-4 col-lg-3 list-app la-palma-volcan-app">
    						<a class="link-app" href="${laPalmaVolcanUrl}">
    							<div class="app-image"></div>
    							<h2 class="app-name">Erupci??n Volc??nica La Palma 2021</h2>
    							<p class="app-description">Haga un seguimiento diario del avance de la erupci??n volc??nica y las zonas poblacionales afectadas.</p>
    						</a>
    					</li>
                    </c:if>
                    <c:if test="${not empty odsUrl}">
    					<li class="col-sm-6 col-md-4 col-lg-3 list-app ods-app">
    						<a class="link-app" href="${odsUrl}">
    							<div class="app-image"></div>
    							<h2 class="app-name">Indicadores de Desarrollo Sostenible de Canarias</h2>
    							<p class="app-description">Acceda a los indicadores de la Agenda 2030 para el Desarrollo Sostenible de Canarias.</p>
    						</a>
    					</li>
                    </c:if>
					<c:if test="${not empty terriaUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app terria-app">
						<a class="link-app" href="${terriaUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Atlas Estad??stico de Canarias</h2>
							<p class="app-description">Visualice mapas en atlas estad??sticos tematizados y contextualizados con informaci??n geogr??fica de Canarias.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty sieUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app sie-app">
						<a class="link-app" href="${sieUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Sistema de informaci??n electoral</h2>
							<p class="app-description">Acceda a los datos de todas las convocatorias electorales en Canarias desde 1979.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty operacionesEstadisticasUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app operaciones-estadisticas-app">
						<a class="link-app" href="${operacionesEstadisticasUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Cat??logo de operaciones estad??sticas</h2>
							<p class="app-description">Consulte la lista de las operaciones estad??sticas incluidas en los Planes Estad??sticos de Canarias.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty datosAbiertosUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app datos-abiertos-app">
						<a class="link-app" href="${datosAbiertosUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Cat??logo de datos abiertos</h2>
							<p class="app-description">Encuentre las tablas, microdatos, cartograf??as y activos sem??nticos de la estad??stica de Canarias.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty catalogoApisUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app apis-app">
						<a class="link-app" href="${catalogoApisUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Cat??logo de API abiertas</h2>
							<p class="app-description">Estudie y pruebe nuestras API de acceso abierto a la informaci??n estad??stica de Canarias.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty encuestasUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app encuestas-app">
						<a class="link-app" href="${encuestasUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Sistema de encuestas web</h2>
							<p class="app-description">Acceda a los cuestionarios web de las encuestas para las que se le ha solicitado su colaboraci??n.</p>
						</a>
					</li>
                    </c:if>
                    <c:if test="${not empty profesionalesTurismoUrl}">
					<li class="col-sm-6 col-md-4 col-lg-3 list-app profesionales_turismo-app">
						<a class="link-app" href="${profesionalesTurismoUrl}">
							<div class="app-image"></div>
							<h2 class="app-name">Portal de profesionales del turismo</h2>
							<p class="app-description">Acceso profesional a encuestas y a datos a medida.</p>
						</a>
					</li>
                    </c:if>
				</ul>
			</div>
		</div>
        
        <c:import url='${appStyleFooterUrl}' />

	</body>
</html>
</fmt:bundle>
