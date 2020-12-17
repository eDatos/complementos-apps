<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<fmt:bundle basename="application">
<%
    Map params = request.getParameterMap();
    boolean includeTileBar = params.containsKey("appName");
    String appName = request.getParameter("appName");
    String appUrl = params.containsKey("appUrl") ? request.getParameter("appUrl") : "";
%>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");
  pageContext.setAttribute("ibestatWebPrincipal", resource.getString("ibestat.web_principal.url"));
%>
<%@include file="./styles.jsp" %>

<script src="<fmt:message key="complementos_apps.url"/>/organisations/ibestat/common/header/header.js"></script>
<script>
    var NAVBAR_ID = "istacNavbarId";

    function setActiveLink(linkId) {
        document.getElementById(linkId).classList.add("active");
    }

    function setNavbarMode(mode) {
        if (mode.toUpperCase() === "INTERNAL") {
            document.getElementById(NAVBAR_ID).classList.add("istac-navbar-internal");
            document.getElementById(NAVBAR_ID).classList.remove("istac-navbar-external");
        } else if (mode.toUpperCase() === "EXTERNAL") {
            document.getElementById(NAVBAR_ID).classList.add("istac-navbar-external");
            document.getElementById(NAVBAR_ID).classList.remove("istac-navbar-internal");
        }
    }
</script>

<div class="istac-header">
    <div class="istac-navbar">
        <nav id="istacNavbarId" class="navbar-inverse fixed-top navbar-toggleable-lg istac-navbar d-flex justify-content-between istac-navbar-external">
            <div class="navbar-collapse">
                <a class="navbar-brand logo hidden-lg-down" href="${ibestatWebPrincipal}/">
                    <img class="logo-img" src="data:image/png;base64,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" alt="Logo" />
                </a>
                <a class="navbar-brand logo hidden-xl-up" href="${ibestatWebPrincipal}/">
                    <img class="logo-img" src="data:image/png;base64,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" alt="Logo" />
                </a>
            </div>
            <div class="d-flex justify-content-end align-items-center">
                <div>
                    <ul class="navbar-nav">
                        <li class="nav-item pointer">
                            <a class="nav-link" href="<fmt:message key="complementos_apps.url"/>">
                                <span class="border">INICIO</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <%if (includeTileBar) {%>
        <div class="istac-app-header istac-title-bar" id="title-bar">
            <a href="<%= appUrl %>">
                <h1 class="istac-app-header-title">
                    <i class="fa fa-istac-home"></i>
                    <span><%= appName %></span>
                </h1>
            </a>
            <div class="istac-app-header-content" id="istac-app-header-content"></div>
        </div>
    <%}%>
</div>

</fmt:bundle>
