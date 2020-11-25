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

</div>
</div>
</div>
<div class="row" style="margin: 0 auto;">
    <div id="pie">
        <div id="logos_pie" class="row justify-content-between">
            <div class="col" style="text-align: left">
                <a href="http://www.ibestat.es">
                    <img id="logo_peq" name="logo_peq" class="img-responsive"
                        alt="Institut d'Estadística de les Illes Balears"
                        title="Institut d'Estadística de les Illes Balears"
                        src="${complementosAppsIbestatExternal}ibfiles/content/files/logo_ibestat_peq.png" />
                </a>
            </div>
            <div class="col" style="text-align: right">
                <a href="http://www.caib.es/govern/organigrama/area.do?coduo=2390298&amp;lang=es"
                    title="Conselleria d'Economia i Hisenda">
                    <img style="width:100px" id="escudo" name="escudo" alt="Consejería de Trabajo, Comercio e Industria"
                        title="Consejería de Trabajo, Comercio e Industria" class="img-responsive"
                        src="${complementosAppsIbestatExternal}ibfiles/content/files/conselleria_treball.png" />
                </a>
            </div>

        </div>

        <div id="pie_inferior" class="row justify-content-between">
            <div class="col" style="text-align: left">
                <span class="pie_info">Institut d'Estadística de les Illes Balears</span>
                <br />
                <span class="pie_info_normal">C/ Miquel Santandreu, 4, Bajos - 07006 Palma<span
                        class="punto_nar">·</span>971 17 65 11</span>
            </div>
            <div id="menu_pie" class="col">
                <ul>
                    <li class="last-child"><a href="${ibestatWebPrincipal}/ibestat/page?p=aviso_legal">Info Legal</a>
                    </li>
                    <li class="last-child"><a href="${ibestatWebPrincipal}/ibestat/page?p=Accessibilitat">Accesibilidad</a></li>
                    <li class="last-child"><a
                            href="https://www.google.es/maps/place/Carrer+Miquel+Santandreu,+4,+07006+Palma,+Illes+Balears/@39.5675987,2.6584315,17z/data=!3m1!4b1!4m2!3m1!1s0x1297924d2bf49a91:0x429fc3725969857a?hl=es">Sede
                            Ibestat</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>