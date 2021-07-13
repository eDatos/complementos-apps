<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<fmt:bundle basename="application">
    <fmt:message key="defaul.locale" var="defaultLocale"/>
    <% 
        Map params = request.getParameterMap();
        ResourceBundle resource = ResourceBundle.getBundle("application");
        pageContext.setAttribute("ibestatWebPrincipal", resource.getString("ibestat.web_principal.url"));
        String defaultLocale = (String)pageContext.getAttribute("defaultLocale");
        String language = params.containsKey("lang") ? request.getParameter("lang") : defaultLocale;
    %>

    <fmt:setLocale value="<%= language %>"/>
    <fmt:setBundle basename="i18n.common.messages" var="i18n"/>

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
            background-color: #666666;
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

        /* Inicio imágenes */

        .logo-img-60 {
            height: 60px;
        }

        /* Fin imágenes */
    </style>

    <footer class="istac-footer istac-footer-small">
        <div class="footer-content">
            <div class="istac-links">
                <div class="istac-links-wrapper">
                    <a target="_blank" href="${ibestatWebPrincipal}/ibestat/page?p=aviso_legal"><fmt:message key="footer.label.aviso_legal" bundle="${i18n}"/></a>
                    <a target="_blank" href="${ibestatWebPrincipal}/ibestat/page?p=Accessibilitat"><fmt:message key="footer.label.accesibilidad" bundle="${i18n}"/></a>
                    <a target="_blank"
                        href="https://www.google.es/maps/place/Carrer+Miquel+Santandreu,+4,+07006+Palma,+Illes+Balears/@39.5675987,2.6584315,17z/data=!3m1!4b1!4m2!3m1!1s0x1297924d2bf49a91:0x429fc3725969857a?hl=es"><fmt:message key="footer.label.sede" bundle="${i18n}"/></a>
                </div>
            </div>
            
            <div class="image-links">
                <div class="image-links-wrapper">
                    <a href="<fmt:message key="ods.url"/>">
                        <img src="data:image/png;base64, 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"
                            alt="Logo ODS Illes Balears"
                            class="logo-img-60" />
                    </a>
                </div>
            </div>

            <div class="social">
                <a target="_blank" href="https://twitter.com/Ibestat">
                    <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAR0SURBVGiBzZldiJRVGICfM7qrrrYJudqFFSVodFEWKhZmROaFN1mB2s9N4UURViZZFtGf5IXRHxUVVBdSRDeZlUV2U1lUQqUX/lAWRRGR/6uy26pPF2cmxnF25vvOfLPrA8PuzJzznveZnf3Oe94vUBDqKGA2MAOYBlwAjAe6y0MOAQeAX4BdwBbg2xBCf1E5JKN2qbeoH6tHzc8RdaN6s9o1HAKT1DXqwYTkB+OA+pQ6cSgERqmPlD/JdnFEfVjtbJfELHVXGwVq2anOKFpiudo/hBIV+tW7ixAI6jPDIFDLi2opVaKkvjXMAtWsM0VGfW64M6/Dy3kllg93xg1YVi/nUEdiJrAZaM/lr3UGgLkhhG+qXzxJxFhmbAOmDmFiKewELgkh/Ft5YWTNgJU0lhgAOlpIoA/YCGwC/gTGAtOBm4Bzc8S5EFgBrDnlHXWijXfsveprLXy3P1XPq5eV2mHczY+on6tPqAvUrQ3iHVYn1Au2pkkiX6k96r4Eia/V0c0+ZnVE1e/PZ4i7ujZAl7Foa8S75bEL1eM5JE6oFzeTqMlnkXpM/UH9vUHs/eoYgMoGcz1wZpP4ewFCCOuB24FjGfPaHELYlkcE+AfoAd4BJjcYNx647v9nxjNBM16pjqDOVndkmPdoTom8pdGGyqRRZivL19VZcITxa/CJ2jfIvIUJIq9nlND4T9+JOjfjhJ9sUOuo49Qb1GfVz9SfjVe66Qkiv+UQUZ2Del+OCXfmTSoF9e+cIveWiI2CLHwBrFLnt9GhQnfzIScxrQRMyTj4o/LY0epFORfKjNoNNN1zaphSovllt8LlIYSBEMKGEML2nAvlIes3pJrxJeCMjIPnq5MSFsnLzIQ53XlOXF3AkwmL5OWqlEkl4HCO8UvVe1IWyoI6FliQMLW3RGxjZiUAD6lvqldbrnMK5EZgXMK8/SOB3cA1OSbtBJaGEI4nLDgoxsp3VeL03SViQzkPc6l3oGmd24gHphR2oc7JuYtqLM2XFGWgTrb5MaIRV6B2mtbL7TN2W3palOhUv2xBolftqAT7oIVAJ9RNJjTPjOX6Gy2srbq+OuCSxCDH1bfVrNVB9Zol9dUWJVQXVQftMttZ/IS6x3gGf1pNahup3ep7BUjss3YLUFc3mPCXeocF3FVSrzWebYrg8XoL9BhPW43Ya/xLXGlVxyND8kGdp35YkIDqIfWsyhq1ncYHyb5HHAV+JHYm/yg/jgL95Z/dwDnEBtw8GjcRUlgZQlhbeVIr0glsJX1jGip2ANOrW6YnXTLLbywmtjZPV/qBW6sloEYEoNyDWjlUWSWwIoTwfebRnh633Gp5Kbe2ccNaN9yZV5F2660sE9S1wyyg+oKpEjVCyxy8k9hO+tS7WhaokbnMbL3eotiuXlqoRJVMp/qAsXRuF4fU+62U5u1EnaA+ZixZiuKg8ebO2W0XqCM0Rl2svm/zOq0evep6Y0e/pUbGKbenW5DqAGaVH1OB84EJxJpLoBfYA/xK7BN8B2wJIQwUsf5/XTvLeAZPS20AAAAASUVORK5CYII="
                        alt="Logo de Twitter" />
                </a>
                <a target="_blank" href="https://ibestat.caib.es/ibestat/service/ibestat/al_dia/10?format=rss">
                    <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAUZSURBVGiBzZlJiB5VEMd/NcaZJDrGuCR6UMS4IKImOomgBDyIFxVBcYuIHjyohERBRaJBQSIE3KJxPam4HFRQYzy4QQwBdVwgSMzihnuGSJJJMjrZfh76+7TT091ff8vM+Ic+dL16VfXv5b2qekGHoPYAc4BzgVOAGcCU2iUwCGwDvgc2AP3ApxEx3KkYWoY6WZ2nrlSHbB5D6rvqderk8SAwXX1Q3dpC8EXYXrM5bSwI9Kj3qLs6SCCLXTUfPaNFok/dMIoEslivzu40idvU4TEkUcewurATBEJ9eBwIZLFc7WqVRJf60jgTSOMlWyGjPjrekefgqWZJLCwxNqT+on6n/maybI4lFlQl0Wf5j31fzpwe9Qz1CnWp+pm6d5SIDNtoNasF1GiJHUGkwNaR6q3qJ6NAZr3aXeb83gpGKhHJ2J2pvqju6yCZRUXOplttx26aSMrHbLW/Q0R2qkfXbaeXswXAqCZuEdFPkh0vAP5u09whwG0HSEyy2KoJYMtvJONzlrqxzbeyTZ0EEDWj1wKvVIzhK+BboBfYUbu+B9YDayLijybITAVWAOdXfgIjMS8iXq0bXNnmk0ljrbpIPa4imUnqO234W1E31GNrRVEj7FafV2dUIDNRXdWin51qN+rcDgVehL/U+y1b9xMyh6tft+hjbhdJnd0MlgLdERHAYcAJwEXAYmA1sD+jPxG4D1itnlBkNCK2AVcCu5qMB6AP9bkm2ZeuWurxJmnKYM7czWpfg/k3tvBGnkb9sJNEUgFNU1/ImT+oln4F6gdNxvReF3B4lcCaRUQMRMQNJJ/LYGqoF1ipnlIyfT6wuwl3U7uAQ5sPszoi4nXgAmBzSnwU8Jq1zSxnznrgxSbc9Ia6gaShVhUfA+tqwWwHfiX5yVdFxJ6iSeqZtblTUuLHIuL2Av0ZJJvshAoxbUT9osnvsQhb1SXqlCJv6sXq/tScPerMEv03Kvr+vJWfvREG1ItKgns8o7+yRPeyij7fb2X5rYK96s0FwR2m/p7S3a/OKtDtVv+s4O+ZLpKGcqdxEPCkeml2ICIGgYfSIuCmPCMRsRv4qIK/De2kKCtMNq9L1DvVTTk629Vjs17VXpMcqY4tau5Prd5SIZbzW0ka96nzchxOVF/P0X+2IMCXM3q5m6RJmVyGJGmsKTeTRj9S9H5NCrSfMvp7zOmwq9dn9O4ssVlW678F/5W6LxcFl4PcJwwQEUPACxnxBOCSHPU1mfvTS2z+XBLPK/AfkbdITpMaQZLqsAybcmQX5sh+5MC6/aQSm5sL5FtJKsyESI11lXZkANMb6ByTIxtRLUbEfmAgJZpaYnNHgXx5LfYDuijLqFYLXF00oEbBeBH5tL+ynG9ngezx+s2/RCJiAFhSYqyO+9WzCsYWA2fnyIueaPpUqqw9dHCO7IGI2FK/ifRIbRlbC5xaYhSSp7EUeAPYApwGLAQuL9DfAWzMkZ+ZCvIvkmQ0DyeTVKN1fAPMrG2YQIYIgHoOyYoyOmd47WMYOC8ivkwLRxycRMQXwF1jFVULuCNLohT+Pw96nmyatsnRWzaNGE+0dvRWIxPqQ+NMQPUJWyWRIbTQ8Tme/lud3zaBDJk+k5OiscI6NW9P6giZbvVuD6wlOo1B9S4btFg7Regok35ulTK0Krary9S8XG3UCU1Wr1HftrW3tEN9U73Kgh5XVYzY2dsgdTDJsdockj7ZicARJKmFJGnKFuAHkj7BZ0B/WS+sGfwDboyhd6KCVDsAAAAASUVORK5CYII="
                        alt="Logo de RSS" />
                </a>
            </div>
        </div>
    </footer>
</fmt:bundle>