<!doctype html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:bundle basename="application">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>Aplicaciones</title>
		<link rel="icon" href="<fmt:message key="complementos_apps.url"/>/assets/img/favicon.ico" type="image/x-icon" />
	</head>
	<body>
		

		<%@include file="apps/navbar/navbar.jsp" %>
		<style>
			body {
				height: 100%;
			}
			.main, .main * {
				padding: 0;
				margin: 0;
				box-sizing: border-box;
			}
			
			.main {
				height: 100%;
				width: 100%;
				display: flex;
				align-items: center;
				font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
				font-weight: 300;
			}
			
			.main a {
				text-decoration: none
			}
			
			.main .container {
				width: 100%;
				max-width: 1100px;
				margin: 0 auto;
				padding-left: 15px;
				padding-right: 15px;
			}
			
			.main .block {
				display: block;
			}
			
			.main .list-apps {
				list-style: none;
				display: flex;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
			}
			
			.main .list-apps .list-app {
				max-width: 400px;
				min-width: 300px;
				height: 200px;
				margin: 10px;
				padding: 10px;
				flex: 1;
				background-color: #dadada;
				
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
			}
			
			.list-app.sie-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/vote.jpg");
			}
			
			.list-app.indicadores-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/indicators.jpg");
			}
			
			.list-app.operaciones-estadisticas-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/statistics-operations.jpg");
			}
			
			.list-app.estadistica-geoespacial-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/geospatial-statistics.jpg");
			}
			
			.list-app.apis-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/apis.jpg");
			}
			
			.main .link-app {
				width: 100%;
				height: 100%;
				cursor: pointer;
				color: white;
				font-size: 2rem;
				text-align: center;
				display: flex;
				justify-content: center;
				align-items: center;
			}

		</style>

		<div class="main">
			<div class="container">
				<ul class="list-apps">
					<li class="list-app sie-app">
						<a class="link-app" href="<fmt:message key="sie.url"/>">Elecciones</a>
					</li>
					<li class="list-app indicadores-app">
						<a class="link-app" href="<fmt:message key="indicators.url"/>">Indicadores</a>
					</li>
					<li class="list-app operaciones-estadisticas-app">
						<a class="link-app " href="<fmt:message key="indicators.url"/>">Operaciones Estadísticas</a>
					</li>
					<li class="list-app estadistica-geoespacial-app">
						<a class="link-app" href="<fmt:message key="indicators.url"/>">Estadística geoespacial</a>
					</li>
					<li class="list-app datos-abiertos-app">
						<a class="link-app" href="<fmt:message key="indicators.url"/>">Catálogo de datos abiertos</a>
					</li>
					<li class="list-app apis-app">
						<a class="link-app" href="<fmt:message key="indicators.url"/>">Catálogo de APIS</a>
					</li>
				</ul>
			</div>
		</div>
		<%@include file="apps/footer/footer-complete.jsp" %>
		
	</body>
</html>
</fmt:bundle>
