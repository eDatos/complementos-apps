<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %>
<%@ page import = "java.util.ResourceBundle" %>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");
  String complementosAppsUrl = resource.getString("complementos_apps.url");
  pageContext.setAttribute("complementosAppsIecmExternal", complementosAppsUrl + "/organisations/iecm/external");
  pageContext.setAttribute("iecmWebPrincipal", resource.getString("iecm.web_principal.url"));
%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js ie lt-ie9 lt-ie8 lt-ie7" lang="es" xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"> 
<![endif]-->
<!--[if IE 7]>         <html class="no-js ie lt-ie9 lt-ie8" lang="es"> <![endif]-->
<!--[if IE 8]>         <html class="no-js ie lt-ie9" lang="es"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js" lang="es"> <![endif]-->

<head>


    <!--          
       <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 -->
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">


    <title>Portal Estadístico. Comunidad de Madrid</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <meta name="description"
        content="El Instituto de Estadística de la Comunidad de Madrid es el organismo encargado de la elaboración y difusión de la estadística oficial de la Comunidad de Madrid">
    <meta name="keywords"
        content="madrid, España, Espana, Europa, internacional, región, Comunidad de Madrid, estadística, datos, tablas, fichas, indicadores, estructurales, coyunturales, callejero, nomenclátor, nomecalles, key, figures, básicos, efemérides, clasificaciones, nomenclaturas, curiosidades estadísticas, tendencias, predicciones, informes, IPC, índice de precios de consumo, paro registrado, afiliados seguridad social, EPA, encuesta población activa, IPI, clima, series, IPRI, agua embalsada, demografía salud, población, MNP, migraciones, proyecciones, cuentas económicas, directorio, industria, servicios, sociales, municipios, censos, anuario, renta municipal, bancos coyuntura, cuentas patrimoniales, condiciones ambientales, hogares, mercado trabajo, educación, cultura, ocio, resultados electorales, elecciones, referendum, transporte, urbanismo, vivienda, publicación, BACO, DESVAN, DIVISOR, ALMUDENA, PATRICIA, BDT, mapas, padrón, territorial">
    <meta name="GENERATOR" content="Microsoft FrontPage 6.0">
    <meta name="ProgId" content="FrontPage.Editor.Document">

    <link rel="stylesheet" href="${complementosAppsIecmExternal}/iestadis/css/normalize.css" />
    <link rel="stylesheet" href="${complementosAppsIecmExternal}/iestadis/css/styles.css" />
    <!--[if gte IE 7]> <link rel="stylesheet" href="css/ie.css"> <![endif]-->

    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/modernizr-2.7.1.min.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery.jcarousel.min.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery.placeholder.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery.ellipsis.min.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/vendor/jquery.accessiblefocus-0.0.1.js"></script>
    <script src="${complementosAppsIecmExternal}/iestadis/js/main.js"></script>



    <!--[if gte mso 9]><xml>
<mso:CustomDocumentProperties>
<mso:ie_fechaPublicado msdt:dt="string">18/12/2020 14:08:35</mso:ie_fechaPublicado>
<mso:Approval_x0020_Level msdt:dt="string"></mso:Approval_x0020_Level>
<mso:Categories msdt:dt="string"></mso:Categories>
<mso:Assigned_x0020_To msdt:dt="string"></mso:Assigned_x0020_To>
</mso:CustomDocumentProperties>
</xml><![endif]-->
    <title>Portal Estadístico. Comunidad de Madrid</title>
</head>

<body class="home">
    <div id="skip"><a href="#main-content" class="importantRule"> Ir al contenido</a></div>
    <div class="wrapper">

        <!--webbot bot="Include" U-Include="cabeceratotal.html" TAG="BODY" startspan -->
        <div id="skip"><a href="#main-content" class="importantRule">Ir al
                contenido</a></div>
        <div class="wrapper">


            <div id="skip"><a href="#main-content" class="importantRule">Ir al
                    contenido</a></div>
            <header id="header">
                <h2 class="accesibilidad">Cabecera de página</h2>
                <div class="logo-wrapper">
                    <h1>
                        <a href="${iecmWebPrincipal}/index.html"><img
                                src="${complementosAppsIecmExternal}/iestadis/img/logo.jpg" width="154" height="47"
                                title="Instituto de Estadística" /></a>
                    </h1>
                </div>

                <div class="search-wrapper">
                    <h3 class="accesibilidad">Buscador</h3>


                    <a class="buscador" href="http://gestiona.madrid.org/iestadis/buscador.htm">
                        <img src="${complementosAppsIecmExternal}/iestadis/img/buscar.jpg" title="Buscador estadístico"
                            width="114" height="37" />
                    </a>

                </div>

                <div class="links-wrapper fright">
                    <h3 class="accesibilidad">Enlaces útiles</h3>


                    <a class="atencion-ciudadano"
                        href="http://comunidad.madrid/servicios/informacion-atencion-ciudadano">
                        <img src="${complementosAppsIecmExternal}/iestadis/img/atencion-ciudadano.png"
                            title="Información 012. Atención al ciudadano" />
                    </a>

                    <a class="suma-de-todos" href="http://comunidad.madrid" title="Comunidad de Madrid">
                        <img src="${complementosAppsIecmExternal}/iestadis/img/comunidad-madrid.bmp"
                            title="Comunidad de Madrid" />
                    </a>
                </div>
            </header>






            <nav id="menu" role="navigation" aria-label="Menu principal">
                <h2 class="accesibilidad">Menú principal</h2>
                <ul id="nav-menu" class="nav" role="menubar">

                    <li><a href="${iecmWebPrincipal}/fijas/otros/estructu_ecodosnivel.htm">Economía </a>
                        <ul role="menu">
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_cre.htm">Cuentas regionales
                                </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_sec.htm">
                                    Sectores económicos </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/economicas/otros/estructu_df.htm">
                                    Demanda final y sectores institucionales </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_col.htm">
                                    Colectivo empresarial </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_mtr.htm">
                                    Mercado de trabajo </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_pre.htm">
                                    Precios </a>
                            </li>
                            <li>
                                <a
                                    href="${iecmWebPrincipal}/fijas/estructu/economicas/datosimpositivos/estructu_oie.htm">
                                    Información tributaria </a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="${iecmWebPrincipal}/fijas/otros/estructu_demodosnivel.htm">Demografía </a>
                        <ul role="menu">
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_cen.htm">
                                    Cifras de población</a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/demograficas/mnp/estructu_mnp.htm">
                                    Movimiento Natural de la Población </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/demograficas/migra/estructu_mig.htm">
                                    Migraciones </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_indem.htm">
                                    Indicadores demográficos </a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="${iecmWebPrincipal}/fijas/otros/estructu_socialdosnivel.htm">Sociedad </a>
                        <ul role="menu">
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_cvh.htm">
                                    Nivel y condiciones de vida </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/otros/estructu_elec.htm">
                                    Procesos electorales </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_sal.htm">
                                    Salud</a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_psd.htm">
                                    Protección Social y Dependencia</a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_gen.htm">
                                    Estadísticas de género</a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_edu.htm">
                                    Educación </a>
                            </li>

                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_jus.htm">
                                    Justicia y Seguridad </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_viv.htm">
                                    Vivienda, Edificios y Locales </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_cul.htm">
                                    Cultura, Turismo y Ocio</a>
                            </li>

                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/sociales/estructu_mfa.htm">
                                    Entorno físico y Medio ambiente</a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="${iecmWebPrincipal}/fijas/otros/estructu_terridosnivel.htm">Territorio </a>
                        <ul role="menu">
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/territorio/estructu_visores.htm">
                                    Visores </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/territorio/estructu_prodcarto.htm">
                                    Productos cartográficos </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/territorio/estructu_descargas.htm">
                                    Descargas </a>
                            </li>

                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_recono.htm">
                                    Reconocimiento y codificación de direcciones postales (Recono) </a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="${iecmWebPrincipal}/fijas/otros/tabulaciones.htm">Tabulaciones personalizadas </a>
                        <ul role="menu">
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/tabulaciones.htm">
                                    Tablas y mapas </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/tabulaciones.htm">
                                    Listados </a>
                            </li>
                        </ul>
                    </li>


                    <li><a href="${iecmWebPrincipal}/fijas/otros/estructu_cifrasdosnivel.htm">Madrid en cifras </a>
                        <ul role="menu">

                            <li>
                                <a>
                                    La Comunidad de Madrid en cifras
                                </a>

                                <a href="${iecmWebPrincipal}/fijas/basicos/estructu_cifrasesp.htm">
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/punto.gif" align="left"
                                        width="16" height="16" />
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/banderaesp.gif"
                                        style="cursor: default" align="right" width="22" height="22" />
                                    &nbsp;&nbsp;Castellano </a>



                                <a href="${iecmWebPrincipal}/fijas/basicos/estructu_cifrasing.htm">
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/punto.gif" align="left"
                                        width="16" height="16" />
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/flagingl-redonda-22.jpg"
                                        style="cursor: default" align="right" width="22" height="22" />
                                    &nbsp;&nbsp;Inglés </a>



                                <a href="${iecmWebPrincipal}/fijas/basicos/estructu_cifraschi.htm">
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/punto.gif" align="left"
                                        width="16" height="16" />
                                    <img src="${complementosAppsIecmExternal}/iestadis/img/banderachi.gif"
                                        style="cursor: default" align="right" width="22" height="22" />
                                    &nbsp;&nbsp;Chino </a>
                            </li>



                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/anuario/estructu_anu.htm">
                                    Anuario Estadístico </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_im.htm">
                                    Información municipal </a>
                            </li>

                            <li>
                                <a href="${iecmWebPrincipal}/fijas/otros/estructu_atl.htm">
                                    Atlas estadístico </a>
                            </li>
                            <li>
                                <a href="${iecmWebPrincipal}/fijas/estructu/general/otros/estructu_ois.htm">
                                    Indicadores Unión Europea </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <!--webbot bot="Include" endspan i-checksum="56007" -->
            <div id="content-wrapper" class="clearfix">

                <main id="main-wrapper">
                    <h2 class="accesibilidad">Contenido principal</h2>
                    <div id="main-content">

                        <h3 class="accesibilidad">Novedades</h3>
                        <div class="row clearfix">

                            <!-- CONTENIDO-->