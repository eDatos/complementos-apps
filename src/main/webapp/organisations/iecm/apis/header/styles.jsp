<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/css" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- TODO probablemente se pueda deprecar la propiedad y cargar estos estilos directamente desde apis/header/header.jsp --%>
<fmt:bundle basename="application">
.content-wrapper {
    max-width: 960px;
    font-family: "Droid Sans", sans-serif;
    margin: auto;
    padding: 20px;
}

.content-wrapper h1 {
    font-size: 1.4em;
}

.content-wrapper h2 {
    font-size: 1.1em;
}


/* Swagger */
h1, h2, h3, h4,
.swagger-section .swagger-ui-wrap {
    font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;    
    font-weight: normal;
}

.version-list h1,
.swagger-section .swagger-ui-wrap .info_title {
    border-bottom: 1px solid #59656e;
    margin-bottom: 10px;
    color: #59656e;
    font-weight: normal;
}
</fmt:bundle>
