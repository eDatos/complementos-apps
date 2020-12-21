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

</div>
</div>
</main>
</div>


<!--webbot bot="Include" U-Include="piedepagina.html" TAG="BODY" startspan -->

<footer id="footer-wrapper" class="clearfix">
    <h2 class="accesibilidad">Pie de página</h2>
    <div class="w3avalid">
        <h3 class="accesibilidad">Nivel de conformidad</h3>
        <a href="http://www.w3.org/WAI/WCAG1A-Conformance">
            <img src="${complementosAppsIecmExternal}/iestadis/img/validation.gif" alt="W3A Validation" width="57"
                height="20">
        </a>
    </div>
    <div class="services">
        <h3 class="accesibilidad">Servicios</h3>
        <ul class="services-list">
            <li>
                <a class="summary" href="${iecmWebPrincipal}/fijas/basicos/estructu_cifrasing.htm">
                    <img src="${complementosAppsIecmExternal}/iestadis/img/ico-englishFlag.jpg"
                        title="Summary (Key Figures)" width="15" height="11" />Summary</a>
            </li>


            <li>
                <a class="rss" href="${iecmWebPrincipal}/fijas/otros/rss.htm">
                    <img src="${complementosAppsIecmExternal}/iestadis/img/ico-rss.jpg" title="RSS" width="15"
                        height="11" />RSS</a>
            </li>

            <li>
                <a href="${iecmWebPrincipal}/fijas/otros/avisolegal.htm">Aviso Legal</a>
            </li>

            <li>
                <a
                    href="http://comunidad.madrid/servicios/informacion-atencion-ciudadano/aviso-legal-privacidad">Privacidad</a>
            </li>

            <li>
                <a href="${iecmWebPrincipal}/fijas/otros/buzon.htm">Contacto</a>
            </li>

            <li>
                <a
                    href="http://www.comunidad.madrid/servicios/informacion-atencion-ciudadano/accesibilidad">Accesibilidad</a>
            </li>
            <li>
                <a href="${iecmWebPrincipal}/fijas/otros/mapaweb.htm">Mapa Web</a>
            </li>
        </ul>
    </div>
    <div class="copyright">
        <h3 class="accesibilidad">Copyright</h3>
        <p>Copyright &copy; Comunidad de Madrid</p>
    </div>
</footer>
</div>

<!--INICIO ESTADÍSTICAS  -->
<script type="text/javascript">ma_codapp = "IESTADIS";</script>
<script type="text/javascript" src="${complementosAppsIecmExternal}/webutils/medicion_audiencias.js"></script>
<!-- FIN ESTADÍSTICAS -->

<!--webbot bot="Include" endspan i-checksum="22360" -->
</div><!-- .wrapper -->

</body>

</html>