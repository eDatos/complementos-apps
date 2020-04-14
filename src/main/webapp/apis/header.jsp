<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">
	<% request.setCharacterEncoding("utf-8"); %>
	<fmt:message key="complementos_apps.url" var="insertTranslation" />
	<jsp:include page="/apps/header/header.jsp">
		<jsp:param name="appName" value="Catálogo de API abiertas" />
		<jsp:param name="appUrl" value="${insertTranslation}/api" />
	</jsp:include>

	<div class="content-wrapper">
</fmt:bundle>