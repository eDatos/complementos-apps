<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% 
  ResourceBundle resource = ResourceBundle.getBundle("application");
  String complementosAppsUrl = resource.getString("complementos_apps.url");
  pageContext.setAttribute("complementosAppsIbestatExternal", complementosAppsUrl + "organisations/ibestat/external/");
  pageContext.setAttribute("ibestatWebPrincipal", resource.getString("ibestat.web_principal.url"));
%>

    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" href="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/css/estilos20111130.css" type="text/css"
        media="screen,print" />
    <link rel="stylesheet" href="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/css/arte.css" type="text/css"
        media="screen,print" />
    <link rel="stylesheet" href="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/css/estilos-print.css" type="text/css"
        media="print" />
    <link rel="stylesheet" href="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/css/jquery.treeview.css" type="text/css"
        media="screen,print" />
    <link rel="shortcut icon" href="${complementosAppsIbestatExternal}/ibestat/favicon.ico" />
    <link rel="icon" type="image/png" href="${complementosAppsIbestatExternal}/ibestat/favicon.png" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

    <script type="text/javascript" src="${complementosAppsIbestatExternal}/ibestat/jaxi/js/jquery/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="${complementosAppsIbestatExternal}/ibestat/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="${complementosAppsIbestatExternal}/ibestat/js/ibestatcms.js"></script>
</head>

<body data-ftl="ib_visualizer">
    <div id="wrapper" class="container">
        <div id="header">
            <nav class="navbar navbar-light _bg-light">
                <div class="header_logo d-none d-lg-block">
                    <a class="navbar-brand" href="http://www.ibestat.cat/ibestat/inici">
                        <img name="logo" alt="Instituto d'Estadística de les Illes Balears"
                            src="${complementosAppsIbestatExternal}/ibfiles/content/files/logo.png"
                            title="Instituto d'Estadística de les Illes Balears" />
                    </a>
                    <div id="botons_canvi_mida_font" style="display:none;text-align: center;">
                        <a id="link_font_gran" href="javascript:changeFont('18')" class="changefont"
                            title="Cambiar el tamaño de fuente">
                            <img alt="icono fuente grande" id="fuente_18" class="fuente_grande"
                                src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/interfaz/botones/transparent.png" />
                        </a>
                        <a id="link_font_mitjana" href="javascript:changeFont('15')" class="changefont"
                            title="Cambiar el tamaño de fuente">
                            <img alt="icono fuente mediana" id="fuente_15" class="fuente_mediana"
                                src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/interfaz/botones/transparent.png" />
                        </a>
                        <a id="link_font_petita" href="javascript:changeFont('12')" class="changefont"
                            title="Cambiar el tamaño de fuente">
                            <img alt="icono fuente pequeña" id="fuente_12" class="fuente_peque"
                                src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/interfaz/botones/transparent.png" />
                        </a>
                        <script type="text/javascript">
                            document.getElementById("botons_canvi_mida_font").style.display = "block";
                        </script>
                    </div>
                </div>


                <div id="header_busqueda">
                    <div id="menu_top">
                        <a class="d-none" href="http://www.ibestat.cat/ibestat/inici">
                            <img id="logo_govern_peu" name="logo_govern_peu" alt="Imagen en blanco" title="" width="117"
                                height="65" src="${complementosAppsIbestatExternal}/ibfiles/content/files/logo_govern_buid.png" />
                        </a>
                        <ul>
                            <li class="menu_top_mapa">
                                <a accesskey="3" href="${ibestatWebPrincipal}/ibestat/mapa-web">&nbsp;
                                    <span class="d-none d-sm-inline d-md-inline d-lg-inline d-xl-inline ">Mapa
                                        Web</span>
                                </a>
                            </li>
                            <li class="menu_top_contacto">
                                <a href="${ibestatWebPrincipal}/ibestat/contacte?&amp;tipoform=formContacte">
                                    <i class="icon-large icon-envelope"></i>
                                    <span class="d-none d-sm-inline d-md-inline d-lg-inline d-xl-inline ">
                                        Contacto</span>
                                </a>
                            </li>
                            <li class="menu_top_twitter">
                                <a title="twitter (Se abre en una nueva ventana)" target="_blank"
                                    href="http://twitter.com/Ibestat">
                                    <i class="icon-large icon-twitter"></i>
                                </a>
                            </li>
                            <li class="menu_top_rss last-child">
                                <a title="rss" target="_blank"
                                    href="${ibestatWebPrincipal}/ibestat/service/ibestat/al_dia/10?format=rss">
                                    <i class="icon-large icon-rss"></i>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div id="top_buscar" class="form-group row">
                        <form id="formBusqueda" method="get" action="/ibestat/page" accept-charset="ISO-8859-1"
                            class="col-9 offset-3">
                            <input type="hidden" id="busqueda_p" name="p" value="busqueda">
                            <div class="input-group input-group-sm mb-3">
                                <input id="q" name="q" type="text" aria-describedby="button-addon2" class="form-control"
                                    placeholder="Buscar" />
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary icon-search" id="button-addon2"
                                        type="submit">
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div id="menu_top" class="textoIzquierda">
                    </div>


                    <script type="text/javascript">
                        fontmenu = new Object();
                        fontmenu['font_12'] = '12px';
                        fontmenu['font_15'] = '13px';
                        fontmenu['font_18'] = '14px';

                        function changeFont(size) {
                            jQuery(document.body).css("font-size", size + "px");
                            jQuery.cookie("font-size", size);
                            jQuery('#fuente_12').removeClass('seleccionada');
                            jQuery('#fuente_15').removeClass('seleccionada');
                            jQuery('#fuente_18').removeClass('seleccionada');
                            jQuery('#fuente_' + size).addClass('seleccionada');
                            jQuery('#menu_contenedor').css('font-size', fontmenu['font_' + size]);
                        };

                        if (jQuery.cookie("font-size")) {
                            changeFont(jQuery.cookie("font-size"));
                        } else {
                            changeFont('12');
                        }
                    </script>
                </div>
            </nav>

            <script type="text/javascript">
                var ctx = "/ibestat"

                console.log("header.ftl javascript script");
                loadXMLDoc("es");
            </script>
            <div id="menu_contenedor">

                <nav class="navbar navbar-expand-lg navbar-light _bg-light">
                    <a class="navbar-brand d-lg-none d-xl-none d-_md-none" href="#"><img
                            src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/img/header-logo.png" class="img-responsive"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#IbestatMenuHeader"
                        aria-controls="IbestatMenuHeader" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="IbestatMenuHeader">


                        <!--[if lte IE 6]><ul id="menu" onmouseover='toggleSelect()' onmouseout='toggleSelect()'><![endif]-->
                        <!--[if !IE]><!-->
                        <ul id="menu_accessible" class="navbar-nav mr-auto">
                            <!--<![endif]-->
                            <!--[if gt IE 6]><ul id="menu_accessible" ><![endif]-->

                            <!-- De la primera pagina no se muestran sus hijos -->
                            <!--[if gt IE 6]><!-->
                            <li class=" nav-item">
                                <a class="nav-link" href="${ibestatWebPrincipal}/ibestat/inici">Inicio</a>
                            </li>


                            <li class=" dropdown nav-item">
                                <a class="_option_menu nav-link dropdown-toggle" href="#" id="instituto" role="button"
                                    data-toggle="dropdown">El Instituto</a>

                                <div class="dropdown-menu" aria-labelledby="instituto">

                                    <a id="section_1" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/salutacio">Saludo</a>


                                    <a id="section_3" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/organitzacio">Organización</a>


                                    <a id="section_5" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/contractacio">Perfil del
                                        Contratante</a>


                                    <a id="section_7" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/page?&p=clavePublica">Clave
                                        pública</a>

                                </div>
                            </li>


                            <li class=" dropdown nav-item">
                                <a class="_option_menu nav-link dropdown-toggle" href="#" id="estadisticas"
                                    role="button" data-toggle="dropdown">Estadísticas</a>

                                <div class="dropdown-menu" aria-labelledby="estadisticas">




                                    <a id="est_1" class="dropdown-item menu_estadistica" accesskey="5"
                                        href="${ibestatWebPrincipal}/ibestat/estadistiques/entorn-fisic">Entorno físico y
                                        sostenibilidad</a>






                                    <a id="est_2" class="dropdown-item menu_estadistica" accesskey="6"
                                        href="${ibestatWebPrincipal}/ibestat/estadistiques/poblacio">Población</a>






                                    <a id="est_3" class="dropdown-item menu_estadistica" accesskey="7"
                                        href="${ibestatWebPrincipal}/ibestat/estadistiques/economia">Economía</a>






                                    <a id="est_4" class="dropdown-item menu_estadistica" accesskey="8"
                                        href="${ibestatWebPrincipal}/ibestat/estadistiques/societat">Sociedad</a>





                                    <a id="est_5" class="dropdown-item menu_estadistica dropdown-toggle" role="button"
                                        data-toggle="dropdown" href="#">Por territorio</a>

                                    <div class="dropdown-menu" aria-labelledby="por_territorio">

                                        <a id="mun_ficha_municipal" class="dropdown-item submenu_municipios"
                                            accesskey="9"
                                            href="${ibestatWebPrincipal}/ibestat/estadistiques/municipis-xifres">Municipio en
                                            cifras</a>

                                        <a id="mun_ficha_isla" class="dropdown-item submenu_municipios" accesskey="9"
                                            href="${ibestatWebPrincipal}/ibestat/estadistiques/illa-xifres">Isla en cifras</a>

                                        <a id="mun_por_territorio2" class="dropdown-item submenu_municipios"
                                            accesskey="9" href="${ibestatWebPrincipal}/ibestat/estadistiques/territorials">Datos
                                            por
                                            territorio</a>
                                    </div>

                                </div>
                            </li>


                            <li class=" dropdown nav-item">
                                <a class="_option_menu nav-link dropdown-toggle" href="#" id="productos_servicios"
                                    role="button" data-toggle="dropdown">Productos y Servicios</a>

                                <div class="dropdown-menu" aria-labelledby="productos_servicios">

                                    <a id="section_1" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/publicacions">Publicaciones</a>


                                    <a id="section_2" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/subscripcions">Suscripciones
                                        RSS</a>


                                    <a id="section_7" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/serveis">Servicios al
                                        usuario</a>


                                    <a id="section_8" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/informacio">Solicitud de
                                        información</a>


                                    <a id="section_9" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/calendari">Calendario de
                                        estadísticas</a>


                                    <a id="section_10" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/page?&p=clasificaciones">Clasificaciones y códigos
                                        territoriales</a>


                                    <a id="section_11" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/microdades">Microdatos</a>


                                    <a id="section_13" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/page?&p=excel-sig">Mapas
                                        SIG</a>


                                    <a id="section_14" class="dropdown-item" href="${ibestatWebPrincipal}/ibestat/pcaxis">PC
                                        Axis - PX Map</a>

                                </div>
                            </li>


                            <li class=" dropdown nav-item">
                                <a class="_option_menu nav-link dropdown-toggle" href="#" id="organizacion_estadistica"
                                    role="button" data-toggle="dropdown">Organización Estadística</a>

                                <div class="dropdown-menu" aria-labelledby="organizacion_estadistica">

                                    <a id="section_1" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/normativa">Normativa y otra
                                        documentación</a>


                                    <a id="section_3" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/adreces">Enlaces
                                        estadísticos</a>


                                    <a id="section_4" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/inventari">Inventario
                                        estadístico</a>


                                    <a id="section_5" class="dropdown-item"
                                        href="${ibestatWebPrincipal}/ibestat/page?&p=peu-inventario" target="_blank">Portal
                                        Estadístico Unificado (PEU)</a>

                                </div>
                            </li>


                            <li class="  nav-item">
                                <!-- noticias, inicio, ajuda --><a class="_option_menu nav-link"
                                    href="${ibestatWebPrincipal}/ibestat/noticies">Noticias</a>

                            </li>


                            <li class="activo nav-item">
                                <!-- noticias, inicio, ajuda --><a class="_option_menu nav-link"
                                    href="${ibestatWebPrincipal}/ibestat/ajuda">Ayuda</a>

                            </li>
                        </ul>
                        <script type="text/javascript">dropdown('menu_accessible', 'hover', 250);</script>
                        <!--<![endif]-->
                    </div>
                </nav>

            </div>
            <div id="migas_pan">
                <ul id="navlist">
                    <li id="inicio_migas">
                        <img alt="molla pa" class="printonly"
                            src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/interfaz/logo_gris_migas.png"
                            style="vertical-align: middle;" />
                        <a href="${ibestatWebPrincipal}/ibestat/inici">Ibestat</a>
                    </li>
                    <!-- <li>
                        <span class="printonly">&gt;</span>
                        <a href="${ibestatWebPrincipal}/ibestat/estadistiques/poblacio">Estadísticas: Población</a>
                    </li>
                    <li>
                        <span class="printonly">&gt;</span>

                        <a
                            href="${ibestatWebPrincipal}/ibestat/estadistiques/poblacio/padro/2acef6cf-175a-4826-b71e-8302b13c1262">
                            Padrón (cifras de población)</a>
                    </li>
                    <li>
                        <span class="printonly">&gt;</span>
                        <a
                            href="${ibestatWebPrincipal}/ibestat/page?p=px_tablas&amp;nodeId=c516a0cc-fd5e-48d5-8983-e8c8ee17a7b0">
                            2016</a>
                    </li>
                    <li>
                        <span class="printonly">&gt;</span>
                        <span>Criterios de consulta</span>
                    </li> -->
                    <li>
                        <span class="printonly">&gt;</span>
                        <span>Visualizador estadístico</span>
                    </li>
                </ul>
                <div id="print_div" class="cab_tools_simple" style="float:right; width:20px; margin-right:10px;">
                </div>
            </div>
        </div>
        <div id="pagina" class="row clear">
            <div id="contenido" class="col-lg-9 col-xs-12 col-md-8 col-sm-12">

                <div id="cont">
                    <div class="cab_nar">
                        <h1>Visualizador estadístico</h1>
                        <img alt="barra horitzontal" class="printonly"
                            src="${complementosAppsIbestatExternal}/ibestat/theme/ibestat/interfaz/cab_nar_print.png" />
                    </div>