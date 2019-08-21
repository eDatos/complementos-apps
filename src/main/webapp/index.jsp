<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">

<%@include file="apps/navbar/navbar.jsp" %>
<style>
	.mean, .mean * {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	.mean {
		height: 100%;
		width: 100%;
		display: flex;
	    align-items: center;
	    font-family: Roboto;
	    font-weight: 300;
	}
	
	.mean a {
		text-decoration: none
	}
	
	.mean .container {
		width: 100%;
		max-width: 1100px;
		margin: 0 auto;
		padding-left: 15px;
		padding-right: 15px;
	}
	.mean .block {
		display: block;
	}
	.mean .list-apps{
		list-style: none;
		display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-wrap: wrap;
	}
	
	.mean .list-apps .list-app {
		max-width: 400px;
		min-width: 300px;
	    height: 200px;
	    padding: 10px;
	    flex: 1;
	}
	
	.mean .link-app {
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
	.mean .link-app.sie-app {
		background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("./assets/img/vote.jpg");
	}
	.mean .link-app.indicadores-app {
		background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),  url("./assets/img/indicators.jpg");
	}

</style>

<div class="mean">
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
</fmt:bundle>