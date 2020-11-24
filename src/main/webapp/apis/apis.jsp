<!doctype html>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Catálogo de API abiertas</title>
	<link rel="icon" href="<fmt:message key="complementos_apps.url"/>/assets/img/favicon.ico" type="image/x-icon" />
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
            padding-left: 15px;
            padding-right: 15px;
            padding-bottom: 20px;
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
        
        h1 {
            font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;    
            font-weight: normal;
        }
        /* END TITLE BAR */
    </style>
    
</head>
<body>	
	
	<%@include file="header.jsp" %>
	
	<div class="apis">
		<ul class="apis-list">
			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/indicators" alt="API de indicadores">API de indicadores</a></h2>
				<p>Un indicador es una medida de la intensidad de un fenómeno en el espacio-tiempo. Esa medida tiene datos de distintas granularidades espaciales (por ejemplo: islas y municipios), o de distintas unidades temporales (por ejemplo: años y meses). Un solo indicador rara vez puede proporcionar información útil acerca de fenómenos complejos tales como la coyuntura económica, las condiciones de vida o la escolarización entre tantos otros. Los sistemas de indicadores están diseñados para aportar información más precisa sobre un fenómeno, y para ello se organizan en dimensiones o áreas de análisis, bajo las que se integran los indicadores. El objetivo de esta API es permitir el acceso a datos y metadatos de: Sistemas de indicadores, indicadores e instancias de indicadores.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/statistical-resources" alt="API de recursos estadísticos">API de recursos estadísticos</a></h2>
				<p>Los recursos de información estadística son los productos que se obtienen de una operación estadística. El objetivo de esta API es facilitar la consulta de todos los recursos estadísticos almacenados en eDatos: cubos o tablas estadísticas, publicaciones o colecciones de tablas, consultas a cubos estadísticos.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/structural-resources" alt="API de recursos estructurales (activos semánticos)">API de recursos estructurales (activos semánticos)</a></h2>
				<p>Los recursos estructurales son aquellos que sirven de apoyo para normalizar a los recursos estadísticos que se produce. Los principales recursos estructurales existente son los esquemas de organizaciones, esquemas de temas, esquemas de conceptos, clasificaciones y definiciones de estructuras de datos. Esta API permite consultar el inventario completo de los recursos estructurales que maneja la organización.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/operations" alt="API de operaciones estadísticas">API de operaciones estadísticas</a></h2>
				<p>Las operaciones estadísticas son la unidad básica de planificación de la actividad estadística del Instituto Canario de Estadística (ISTAC). Todos los recursos que se publican guardan relación de manera directa o indirecta con alguna operación. Esta API permite consultar el inventario de operaciones estadísticas del Instituto, las diferencias que existen entre las diferentes realizaciones de una misma operación estadística (instancias) y su agrupación en familias. Así por ejemplo tenemos que el "Censo de Población y Viviendas" es una operación estadística de la que podremos encontrar distintas realizaciones o instancias (Censo 2011, Censo 2001, Censo 1991, etc) y que podría agruparse con otras operaciones dentro de una familia "Estadísticas poblacionales". La información sobre las operaciones estadísticas y de sus instancias está armonizada con la propuesta de Eurostat para el Sistema Estadístico Europeo y definida en el documento EURO-SDMX Metadata Structure (release 4, December 2014).</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/registry" alt="API de Registro SDMX">API de Registro SDMX</a></h2>
				<p>La API de Registro SDMX implementa las especificaciones del registro de dicho estándar internacional. Mediante esta API se pueden obtener todos los artefactos SDMX que el ISTAC tiene disponibles en sus sistemas. Este servicio se basa en la premisa de centralizar la localización de los recursos de datos metadatos estadísticos de tal forma que se pueda reutilizar por cualquier tercero.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/cmetadata" alt="API de metadatos comunes">API de metadatos comunes</a></h2>
				<p>Existen determinados metadatos que siempre toman el mismo valor para todos los recursos que son publicados por una organización en concreto. Ejemplos de este tipo de metadatos son: los datos de contacto de la organización, la descripción de la organización o la licencia que aplica la organización a los datos que publican. Para evitar definir en cada uno de los recursos el valor que toman estos metadatos (que como hemos dicho siempre es el mismo en la misma organización), se definen las configuraciones de metadatos comunes. Cada organización podrá tener su propia configuración de metadatos y esto nos permite que el mantenimiento de este tipo de documentación sea sencilla y poco propicia a errores.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/export" alt="API de exportaciones">API de exportaciones</a></h2>
				<p>Realizar exportaciones de los recursos estadísticos resulta una tarea común y de gran utilidad para poder tratar en el día a día con los datos manejados por el organismo. Esta API nos provee la funcionalidad necesaria para poder exportar los recursos estadísticos en diferentes formatos.</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/callejero" alt="API de callejero (Gazetteer)">API de callejero (Gazetteer)</a></h2>
				<p>La api Gazetteer (Callejero) ofrece el servicio de diccionario geográfico basándose en los diferentes municipios de las Islas Canarias. Obteniendo, si así se desea, la información de salida tanto en formato json como xml. Para obtener un formato u otro se realizará mediante la inclusión de la cabecera "Accept" en la llamada, cuyos valores pueden ser application/json o application/xml; o bien indicándolo en la propia url mediante el uso de ".format".</p>
			</li>

			<li class="apis-item">
				<h2><a href="<fmt:message key="istac_apis_base.url"/>/permalinks" alt="API de enlaces permanentes (permalinks)">API de enlaces permanentes (permalinks)</a></h2>
				<p>Los permalinks son enlaces permanentes que se generan para asegurarnos que una URL va a ser accesible a lo largo del tiempo.</p>
			</li>
		</ul>
	</div>
	
	<%@include file="../apps/footer/footer.jsp" %>

</body>
</html>
</fmt:bundle>