<!doctype html>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Catálogo API de eDatos</title>
	<link rel="icon" href="<fmt:message key="complementos_apps.url"/>/assets/img/favicon.ico" type="image/x-icon" />
</head>
<body>
	<style>
	
		/* BEGIN APIS */
		.apis {
			font-family: "Droid Sans",sans-serif;
			font-size: 15px;
			color: #000;
			max-width: 960px;
			margin: 0 auto;
			padding: 5px 0 0 0;
			clear: both
		}

		.apis .apis-list {
			list-style: none;
		}
		
		.apis .izq {
			float: left
		}
		
		.apis .der {
			float: right
		}
		
		.apis h1, .apis h2 {
			padding-bottom: 10px;
			font-weight: 700;
			font-size: 25px
		}
		
		.apis h2 {
			border-bottom: 1px solid #d6d6d6;
			box-sizing: border-box
		}
		
		.apis h2 a {
			color: #999;
			font-size: 18px;
			text-decoration: none
		}
		
		.apis h2 a:hover {
			color: #000;
			text-decoration: underline
		}
		
		.apis ol li, .apis p {
			line-height: 1.4em;
			padding: 0 0 10px;
			color: #333;
			text-align: justify
		}
		
		/* END APIS */

		/* BEGIN TITLE BAR */
		#title-bar {
			border-bottom: 2px solid #59656e;
			padding: 15px 36px;
			background-color: #fff;
			display: flex;
			flex-direction: row;
			justify-content: space-between;
			flex-wrap: wrap;
		}
		
		#title-bar .content {
			flex-grow: 1;
			display: flex;
			flex-direction: row;
			justify-content: flex-end;
		}
		
		#title-bar h1 {
			margin: 0 !important;
			font-size: 1.5rem;
			font-weight: 500;
			color: #59656e;
		}
		
		#title-bar a {
			text-decoration: none;
		}
		
		@media (min-width: 430px) {
			#title-bar h1 {
				padding-right: 20px;
			}
		}
		
		#title-bar h1 .fa.fa-istac-home {
			vertical-align: bottom;
			width: 23px;
			height: 23px;
			background-repeat: no-repeat;
			background-position: center;
			background-size: contain;
			opacity: 1;
			background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI5bW0iIGhlaWdodD0iOW1tIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA5IDkiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPjxtZXRhZGF0YT48cmRmOlJERj48Y2M6V29yayByZGY6YWJvdXQ9IiI+PGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+PGRjOnR5cGUgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIvPjxkYzp0aXRsZS8+PC9jYzpXb3JrPjwvcmRmOlJERj48L21ldGFkYXRhPjxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsLTI4OCkiPjxnIHRyYW5zZm9ybT0ibWF0cml4KC45ODk4NSAwIDAgLjk4OTg1IC0zODAuNDkgLTIzLjAyKSI+PGcgdHJhbnNmb3JtPSJtYXRyaXgoLjA4Nzc4NCAwIDAgLjA4Nzc4NCAzODQuNzMgMzE0LjI3KSIgZmlsbD0iIzY2NiIgZmlsbC1vcGFjaXR5PSIuOTkyMTYiIHN0cm9rZS13aWR0aD0iMi44NDg1Ij48cGF0aCBjbGFzcz0ic3QwIiBkPSJtNDggMTgtMzIuOCAyNC45IDQuNiA2LjEgMjguMi0yMS41IDI4LjIgMjEuNSA0LjYtNi4xem0wIDEzLjUtMjUuOSAxOS43djI2LjhoMTkuOHYtMjFoMTJ2MjFoMjAuMXYtMjYuN3oiIGZpbGw9IiM2NjYiIGZpbGwtb3BhY2l0eT0iLjk5MjE2IiBzdHJva2Utd2lkdGg9IjIuODQ4NSIvPjwvZz48Y2lyY2xlIGN4PSIzODguOTQiIGN5PSIzMTguNzUiIHI9IjQuMjc2MyIgZmlsbD0ibm9uZSIgb3BhY2l0eT0iLjYiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9Ii41Mzk2NCIvPjwvZz48L2c+PC9zdmc+');
		}
		
		h1 {
		    font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;    
		    font-weight: normal;
		}
		/* END TITLE BAR */
	</style>
	
	<%@include file="apps/navbar/navbar.jsp" %>
	<div id="title-bar">
		<a href="https://www.gobiernodecanarias.org/aplicaciones/appsistac/apis/">
			<h1>
				<i class="fa fa-istac-home"></i>
				<span>Catálogo API de eDatos</span>
			</h1>
		</a>
	</div>
	
	<div class="apis">
		<ul class="apis-list">
			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/operations" alt="API de operaciones estadísticas">API de operaciones estadísticas</a></h2>
				<p>Las operaciones estadísticas son la unidad básica de planificación de la actividad estadística del Instituto Canario de Estadística (ISTAC). Todos los recursos que se publican guardan relación de manera directa o indirecta con alguna operación. Esta API permite consultar el inventario de operaciones estadísticas del Instituto, las diferencias que existen entre las diferentes realizaciones de una misma operación estadística (instancias) y su agrupación en familias. Así por ejemplo tenemos que el "Censo de Población y Viviendas" es una operación estadística de la que podremos encontrar distintas realizaciones o instancias (Censo 2011, Censo 2001, Censo 1991, etc) y que podría agruparse con otras operaciones dentro de una familia "Estadísticas poblacionales". La información sobre las operaciones estadísticas y de sus instancias está armonizada con la propuesta de Eurostat para el Sistema Estadístico Europeo y definida en el documento EURO-SDMX Metadata Structure (release 4, December 2014).</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/structural-resources" alt="API de recursos estructurales">API de recursos estructurales</a></h2>
				<p>Los recursos estructurales son aquellos que sirven de apoyo para normalizar a los recursos estadísticos que se produce. Los principales recursos estructurales existente son los esquemas de organizaciones, esquemas de temas, esquemas de conceptos, clasificaciones y definiciones de estructuras de datos. Esta API permite consultar el inventario completo de los recursos estructurales que maneja la organización.</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/structural-resources" alt="API de recursos estructurales">API de recursos estructurales</a></h2>
				<p>Los recursos estructurales son aquellos que sirven de apoyo para normalizar a los recursos estadísticos que se produce. Los principales recursos estructurales existente son los esquemas de organizaciones, esquemas de temas, esquemas de conceptos, clasificaciones y definiciones de estructuras de datos. Esta API permite consultar el inventario completo de los recursos estructurales que maneja la organización.</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/cmetadata" alt="API de metadatos comunes">API de metadatos comunes</a></h2>
				<p>Existen determinados metadatos que siempre toman el mismo valor para todos los recursos que son publicados por una organización en concreto. Ejemplos de este tipo de metadatos son: los datos de contacto de la organización, la descripción de la organización o la licencia que aplica la organización a los datos que publican. Para evitar definir en cada uno de los recursos el valor que toman estos metadatos (que como hemos dicho siempre es el mismo en la misma organización), se definen las configuraciones de metadatos comunes. Cada organización podrá tener su propia configuración de metadatos y esto nos permite que el mantenimiento de este tipo de documentación sea sencilla y poco propicia a errores.</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/statistical-resources" alt="API de recursos estadísticos (beta)">API de recursos estadísticos</a></h2>
				<p>Los recursos de información estadística son los productos que se obtienen de una operación estadística. El objetivo de esta API es facilitar la consulta de todos los recursos estadísticos almacenados en eDatos: cubos o tablas estadísticas, publicaciones o colecciones de tablas, consultas a cubos estadísticos.</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/indicators" alt="API de indicadores">API de indicadores</a></h2>
				<p>Un indicador es una medida de la intensidad de un fenómeno en el espacio-tiempo. Esa medida tiene datos de distintas granularidades espaciales (por ejemplo: islas y municipios), o de distintas unidades temporales (por ejemplo: años y meses). Un solo indicador rara vez puede proporcionar información útil acerca de fenómenos complejos tales como la coyuntura económica, las condiciones de vida o la escolarización entre tantos otros. Los sistemas de indicadores están diseñados para aportar información más precisa sobre un fenómeno, y para ello se organizan en dimensiones o áreas de análisis, bajo las que se integran los indicadores. El objetivo de esta API es permitir el acceso a datos y metadatos de: Sistemas de indicadores, indicadores e instancias de indicadores.</p>
			</li>
			
			<li class="apis-item">
				<h2><a href="http://www.gobiernodecanarias.org/istac/api/callejero" alt="ISTAC API Gazetteer">ISTAC API Gazetteer (Callejero)</a></h2>
				<p>La api Gazetteer (Callejero) ofrece el servicio de diccionario geográfico basándose en los diferentes municipios de las Islas Canarias. Obteniendo, si así se desea, la información de salida tanto en formato json como xml. Para obtener un formato u otro se realizará mediante la inclusión de la cabecera "Accept" en la llamada, cuyos valores pueden ser application/json o application/xml; o bien indicándolo en la propia url mediante el uso de ".format". Como por ejemplo: <a href="https://www3.gobiernodecanarias.org/istac/api/callejero/v1.0/municipalities.json">http://[...]/municipalities.json</a> / <a href="https://www3.gobiernodecanarias.org/istac/api/callejero/v1.0/municipalities.xml">http://[...]/municipalities.xml</a></p>
			</li>
		</ul>
	</div>
	
	<%@include file="apps/footer/footer-complete.jsp" %>

</body>
</html>
</fmt:bundle>