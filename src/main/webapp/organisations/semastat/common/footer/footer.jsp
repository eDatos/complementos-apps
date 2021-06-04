<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");
  pageContext.setAttribute("ibestatWebPrincipal", resource.getString("ibestat.web_principal.url"));
%>
<fmt:bundle basename="application">
  <link
    href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@600&family=IBM+Plex+Sans+Condensed:wght@400;600&display=swap"
    rel="stylesheet">
    <style>
        /* Bootstrap */

        .istac-footer *,
        .istac-footer *::before,
        .istac-footer *::after {
            box-sizing: inherit;
        }

        @-ms-viewport {
            width: device-width;
        }

        .istac-footer a {
            color: #0275d8;
            text-decoration: none;
        }

        .istac-footer img {
            vertical-align: middle;
        }

        .istac-footer a {
            touch-action: manipulation;
        }

        /* Roboto font */

        /* Roboto thin */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: 100;
            src: local("Roboto Thin"), local("Roboto-Thin"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Thin.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: 100;
            src: local("Roboto Thin Italic"), local("Roboto-Thin-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-ThinItalic.ttf") format("truetype");
        }

        /* Roboto light */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: 300;
            src: local("Roboto Light"), local("Roboto-Light"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Light.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: 300;
            src: local("Roboto Light Italic"), local("Roboto-Light-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-LightItalic.ttf") format("truetype");
        }

        /* Roboto regular */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: normal;
            src: local("Roboto Regular"), local("Roboto-Regular"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Regular.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: normal;
            src: local("Roboto Italic"), local("Roboto-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Italic.ttf") format("truetype");
        }

        /* Roboto medium */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: 500;
            src: local("Roboto Medium"), local("Roboto-Medium"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Medium.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: 500;
            src: local("Roboto Medium Italic"), local("Roboto-Medium-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-MediumItalic.ttf") format("truetype");
        }

        /* Roboto bold */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: bold;
            src: local("Roboto Bold"), local("Roboto-Bold"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Bold.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: bold;
            src: local("Roboto Bold Italic"), local("Roboto-Bold-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-BoldItalic.ttf") format("truetype");
        }

        /* Roboto black */

        @font-face {
            font-family: 'Roboto';
            font-style: normal;
            font-weight: 900;
            src: local("Roboto Black"), local("Roboto-Black"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-Black.ttf") format("truetype");
        }

        @font-face {
            font-family: 'Roboto';
            font-style: italic;
            font-weight: 900;
            src: local("Roboto Black Italic"), local("Roboto-Black-Italic"), url("<fmt:message key="complementos_apps.url"/>/assets/fonts/roboto/Roboto-BlackItalic.ttf") format("truetype");
        }

        /* Footer CSS */

        html {
            min-height: 100%;
            height: 100%;
            box-sizing: border-box;
        }

        body {
            position: relative;
            box-sizing: border-box;
            min-height: 100%;
        }

        footer.istac-footer {
            width: 100%;
            color: white;
            box-sizing: border-box;
            font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            line-height: 1.05;
            left: 0;
        }

        footer.istac-footer .footer-content {
            width: 100%;
            height: 100%;
            padding: 2rem;
            background-color: #77767b;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }


        /* Inicio iconos sociales */
        footer.istac-footer .social {
            margin: 5px 10px;
        }

        footer.istac-footer .social a {
            height: 27px;
            width: 27px;
            display: inline-block;
            margin: 0 3px;
        }

        footer.istac-footer .social a img {
            width: inherit;
        }

        /* Fin iconos sociales */
        
        footer .footer-supporters {        
        display: flex;
        width: 100%;
        justify-content: center;
        flex-wrap: wrap;
        padding: 1rem 36px 0 36px;
        }
        
        footer .footer-supporters img {
            height: 4rem;
            width: auto;
            background: white;
            padding: 0.25rem;
            margin-bottom: 1rem;
            margin-left: 0.5rem;
        }
        
        .logo-arte {
            font-family: 'IBM Plex Mono', monospace;
            font-weight: 600;
        }
        
        .istac-links-wrapper a {        
            line-height: 1.5;
            font-family: 'IBM Plex Sans Condensed', BlinkMacSystemFont, -apple-system,
            'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans',
            'Helvetica Neue', Helvetica, Arial, sans-serif;
            text-align: inherit;
            box-sizing: border-box;
            cursor: pointer;
            text-decoration: none;
        }
      
    
    .istac-links-wrapper .tag {        
        cursor: pointer;
        font-size: 1.25rem!important;
        align-items: center;
        border-radius: 4px;
        display: inline-flex;
        height: 2em;
        justify-content: center;
        padding-left: .75em;
        padding-right: .75em;
        white-space: nowrap;
        margin-bottom: .5rem;
        margin-right: 0;
        color: #fff;  
    }
    
    .istac-links-wrapper .tag.is-dark {            
        background-color: #363636;         
        font-weight: 500; 
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;    
    }
    
    .istac-links-wrapper .tag.is-info {        
        font-family: 'IBM Plex Mono', monospace;
        background-color: #3298dc;
        font-weight: 600;
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;
    }
        
    </style>

    <footer class="istac-footer istac-footer-small">
        <div class="footer-content">
           <div class="istac-links-wrapper">
                <a href="https://arte.dev" class="tags has-addons">
                    <span class="tag is-dark is-size-5">Un producto de</span><span class="tag is-info is-size-5 logo-arte">arte_</span>
                </a>
            </div>
        </div>
        <div class="footer-supporters">
            <img alt="Gobierno de Canarias, Unión Europea - Fondo Europeo de Desarrollo Regional y Canarias Avanza con Europa" src="https://semastat.com/img/logos-europa.png">            
        </div>
    </footer>
</fmt:bundle>