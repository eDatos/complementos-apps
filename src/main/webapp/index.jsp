<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">

<!doctype html>
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
			html, body {
				height: 100%;
			}
			
			html, body, .main, .main * {
				padding: 0;
				margin: 0;
				box-sizing: border-box;
			}
			
			body {
				position: relative;
				margin: 0 !important;
				padding: 0 0 170px;
			}
			
			/* BEGIN - overriding navbar.jsp styles */
			
			.istac-navbar {
				margin-bottom: 0 !important;
			}
			
			/* END - overriding navbar.jsp styles */
			
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
			
			.main .list-apps{
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
				padding: 10px;
				flex: 1;
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
				
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
			}
			
			.main .link-app.sie-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/vote.jpg");
			}
			
			.main .link-app.indicadores-app {
				background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("<fmt:message key="complementos_apps.url"/>/assets/img/indicators.jpg");
			}

		</style>

		<div class="main">
			<div class="container">
				<ul class="list-apps">
					<li class="list-app">
						<a class="link-app sie-app" href="<fmt:message key="sie.url"/>">Elecciones</a>
					</li>
					<li class="list-app">
						<a class="link-app indicadores-app" href="#">Indicadores</a>
					</li>
				</ul>
			</div>
		</div>
		<%@include file="apps/footer/footer.jsp" %>
		
	</body>
</html>
</fmt:bundle>
