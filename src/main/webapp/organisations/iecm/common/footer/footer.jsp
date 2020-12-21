<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import = "java.util.ResourceBundle" %>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");
  pageContext.setAttribute("webPrincipal", resource.getString("iecm.web_principal.url"));
%>
<fmt:bundle basename="application">
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

        .istac-footer a:focus,
        .istac-footer a:hover {
            color: #014c8c;
            text-decoration: underline;
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
            padding-bottom: 80px;
            position: relative;
            box-sizing: border-box;
            min-height: 100%;
        }

        footer.istac-footer {
            bottom: 0;
            position: absolute;
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
            padding: 5px 36px;
            background-color: #59656E;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        /* BEGIN  Enlaces */
        footer.istac-footer .istac-links {
            margin: 5px 0;
        }

        footer.istac-footer .istac-links .istac-links-wrapper a {
            color: white;
            font-size: 12px;
            font-weight: 500;
            margin: 0 3px;
            padding: 0 4px;
        }

        /* END - Enlaces */


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
    </style>

    <footer class="istac-footer istac-footer-small">
        <div class="footer-content">
            <div class="istac-links">
                <div class="istac-links-wrapper">
                    <a target="_blank" href="${webPrincipal}/fijas/otros/avisolegal.htm">Aviso Legal</a>
                    <a target="_blank"
                        href="http://comunidad.madrid/servicios/informacion-atencion-ciudadano/aviso-legal-privacidad">Política
                        de privacidad</a>
                    <a target="_blank"
                        href="http://www.comunidad.madrid/servicios/informacion-atencion-ciudadano/accesibilidad">Accesibilidad</a>
                    <a target="_blank" href="${webPrincipal}/fijas/otros/buzon.htm">Contacto</a>
                </div>
            </div>

            <div class="social">
                <a target="_blank" href="${webPrincipal}/fijas/otros/rss.htm">
                    <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAUZSURBVGiBzZlJiB5VEMd/NcaZJDrGuCR6UMS4IKImOomgBDyIFxVBcYuIHjyohERBRaJBQSIE3KJxPam4HFRQYzy4QQwBdVwgSMzihnuGSJJJMjrZfh76+7TT091ff8vM+Ic+dL16VfXv5b2qekGHoPYAc4BzgVOAGcCU2iUwCGwDvgc2AP3ApxEx3KkYWoY6WZ2nrlSHbB5D6rvqderk8SAwXX1Q3dpC8EXYXrM5bSwI9Kj3qLs6SCCLXTUfPaNFok/dMIoEslivzu40idvU4TEkUcewurATBEJ9eBwIZLFc7WqVRJf60jgTSOMlWyGjPjrekefgqWZJLCwxNqT+on6n/maybI4lFlQl0Wf5j31fzpwe9Qz1CnWp+pm6d5SIDNtoNasF1GiJHUGkwNaR6q3qJ6NAZr3aXeb83gpGKhHJ2J2pvqju6yCZRUXOplttx26aSMrHbLW/Q0R2qkfXbaeXswXAqCZuEdFPkh0vAP5u09whwG0HSEyy2KoJYMtvJONzlrqxzbeyTZ0EEDWj1wKvVIzhK+BboBfYUbu+B9YDayLijybITAVWAOdXfgIjMS8iXq0bXNnmk0ljrbpIPa4imUnqO234W1E31GNrRVEj7FafV2dUIDNRXdWin51qN+rcDgVehL/U+y1b9xMyh6tft+hjbhdJnd0MlgLdERHAYcAJwEXAYmA1sD+jPxG4D1itnlBkNCK2AVcCu5qMB6AP9bkm2ZeuWurxJmnKYM7czWpfg/k3tvBGnkb9sJNEUgFNU1/ImT+oln4F6gdNxvReF3B4lcCaRUQMRMQNJJ/LYGqoF1ipnlIyfT6wuwl3U7uAQ5sPszoi4nXgAmBzSnwU8Jq1zSxnznrgxSbc9Ia6gaShVhUfA+tqwWwHfiX5yVdFxJ6iSeqZtblTUuLHIuL2Av0ZJJvshAoxbUT9osnvsQhb1SXqlCJv6sXq/tScPerMEv03Kvr+vJWfvREG1ItKgns8o7+yRPeyij7fb2X5rYK96s0FwR2m/p7S3a/OKtDtVv+s4O+ZLpKGcqdxEPCkeml2ICIGgYfSIuCmPCMRsRv4qIK/De2kKCtMNq9L1DvVTTk629Vjs17VXpMcqY4tau5Prd5SIZbzW0ka96nzchxOVF/P0X+2IMCXM3q5m6RJmVyGJGmsKTeTRj9S9H5NCrSfMvp7zOmwq9dn9O4ssVlW678F/5W6LxcFl4PcJwwQEUPACxnxBOCSHPU1mfvTS2z+XBLPK/AfkbdITpMaQZLqsAybcmQX5sh+5MC6/aQSm5sL5FtJKsyESI11lXZkANMb6ByTIxtRLUbEfmAgJZpaYnNHgXx5LfYDuijLqFYLXF00oEbBeBH5tL+ynG9ngezx+s2/RCJiAFhSYqyO+9WzCsYWA2fnyIueaPpUqqw9dHCO7IGI2FK/ifRIbRlbC5xaYhSSp7EUeAPYApwGLAQuL9DfAWzMkZ+ZCvIvkmQ0DyeTVKN1fAPMrG2YQIYIgHoOyYoyOmd47WMYOC8ivkwLRxycRMQXwF1jFVULuCNLohT+Pw96nmyatsnRWzaNGE+0dvRWIxPqQ+NMQPUJWyWRIbTQ8Tme/lud3zaBDJk+k5OiscI6NW9P6giZbvVuD6wlOo1B9S4btFg7Regok35ulTK0Krary9S8XG3UCU1Wr1HftrW3tEN9U73Kgh5XVYzY2dsgdTDJsdockj7ZicARJKmFJGnKFuAHkj7BZ0B/WS+sGfwDboyhd6KCVDsAAAAASUVORK5CYII="
                        alt="Logo de RSS" />
                </a>
            </div>
        </div>
    </footer>
</fmt:bundle>