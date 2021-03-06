<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Map" %>

<fmt:bundle basename="application">

<%
    Map params = request.getParameterMap();
    boolean includeTileBar = params.containsKey("appName");
    String appName = request.getParameter("appName");
    String appUrl = params.containsKey("appUrl") ? request.getParameter("appUrl") : "";
%>

<%@include file="./styles.jsp" %>

<link href="<fmt:message key='complementos_apps.url' />/organisations/istac/common/favicon.ico" rel="shortcut icon" />
<script src="<fmt:message key='complementos_apps.url'/>/organisations/istac/common/header/header.js"></script>
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
                <a class="navbar-brand logo hidden-lg-down" href="<fmt:message key='web_istac_base.url' />/">
                    <img class="logo-img" src="data:image/png;base64, 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" alt="Logo del ISTAC" />
                </a>
                <a class="navbar-brand logo hidden-xl-up" href="<fmt:message key='web_istac_base.url' />/">
                    <img class="logo-img" src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAANdSURBVGiB7Zrdi1VVGIeffUYbcpzRFM1C0pIxEDScwkAh+vAuKYiKIJJklC4iCm8CiegP6AMhECoDTYI+oItIiKAbSYIJG8twJCzI/NbIoiwd5+liOXpanjOz9p69Z9/MA+du7fd92Gudtfb+nZNREmovsAq4C1gJzAduuPwB+As4DfwMDAEDwJdZlp0oyyFFcon6kvq9xflW3awuqFJ0mbpTHZ6AaMyFyzVvL1N0nrpLvVSiaMxF9Q21e6Kyj6qnKhSN+VV9oIhoh7ptEkWbGVZfVrNU2S7105pkm3lPnT6e7Az1q5pFm/lYbXS0WwbAR8DavEuoQpYBJ1uuDfVN4NmChc8De4FBwiHxB5ABPUAv0AfcDYw9xa0ZbCW7ruCU7VEfV7vG66r2qP3qgZw9zseF5qrHchY5YJHthys70Eb1aGKv43GBhepr6onEAlvV64rIRn171M8S+m1vV2C6+pD6ieHIjLmkPjNR0ahnh/r6GLJn1FtSCs1TX1D3N128qUzZqN8G9bdIdr+6HMK3N0+xPmB5lmU7KrG92qcLuAeYC/wIDGRZNlJlzymmmKId6geGV5O1pj531ok61LTfHVRfVG+u26stLTbp0ZPsC3W9OqNux/+h/jvGcah6Vl1Tt+cojYQxc4CFVYuk0gD+TBg3q2qRVBrAuYRxt1UtkkoDOJwwbmXVIqk0gEMJ49aonVXLpNAA9iWM6wLWVeyShrponG1tlD11u15BPZQo/XDdrgAY8qsUfrCEl84yhG81PUJ9axJ8utUH1afV1eq1B5whu0rluQpl+9Xfo37fqSvigX3qSKLwsPp8yaIdhiC7HWfURfFFu3LcZdW3LSdImaXuTuj3bnzhAq+djvEYUh8pKJqpj6lHEnsdb1XkyZzCo+xVn1CvTxCdrW5SB3P2+Ltd3PoO0F/krgH/AF8TotHDhLi1QYhblxKeS1YB0wrU3tdOuBPYDdxfoGiVtM/zDIniQMHlUQUf2mo/jqRnqp/XLKrhrT5tCamd6vaaRIfVLRaJH9Sn1HOTKPuLem9u0Uj6JvX9ikUvqK+qMyckG4nfYXU/jveWJtpCfIn6iunP0zEj6jeGhP/GlJ6lZWnqYuA+4E7CAbGYkKB3AyOEOOEs8BNwkKt/8DiVp89/XpCDXdMBfi0AAAAASUVORK5CYII=" alt="Logo peque??o del ISTAC" />
                </a>
            </div>
            <div class="d-flex justify-content-end align-items-center">
                <div>
                    <ul class="navbar-nav">
                        <li class="nav-item pointer">
                            <a class="nav-link" href="<fmt:message key="complementos_apps.url"/>">
                                <span class="border">M??S APLICACIONES</span>
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
