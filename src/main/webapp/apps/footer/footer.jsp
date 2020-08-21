<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        src: local("Roboto Thin"), local("Roboto-Thin"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Thin.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: 100;
        src: local("Roboto Thin Italic"), local("Roboto-Thin-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-ThinItalic.ttf") format("truetype");
    }

    /* Roboto light */

    @font-face {
        font-family: 'Roboto';
        font-style: normal;
        font-weight: 300;
        src: local("Roboto Light"), local("Roboto-Light"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Light.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: 300;
        src: local("Roboto Light Italic"), local("Roboto-Light-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-LightItalic.ttf") format("truetype");
    }

    /* Roboto regular */

    @font-face {
        font-family: 'Roboto';
        font-style: normal;
        font-weight: normal;
        src: local("Roboto Regular"), local("Roboto-Regular"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Regular.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: normal;
        src: local("Roboto Italic"), local("Roboto-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Italic.ttf") format("truetype");
    }

    /* Roboto medium */

    @font-face {
        font-family: 'Roboto';
        font-style: normal;
        font-weight: 500;
        src: local("Roboto Medium"), local("Roboto-Medium"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Medium.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: 500;
        src: local("Roboto Medium Italic"), local("Roboto-Medium-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-MediumItalic.ttf") format("truetype");
    }

    /* Roboto bold */

    @font-face {
        font-family: 'Roboto';
        font-style: normal;
        font-weight: bold;
        src: local("Roboto Bold"), local("Roboto-Bold"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Bold.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: bold;
        src: local("Roboto Bold Italic"), local("Roboto-Bold-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-BoldItalic.ttf") format("truetype");
    }

    /* Roboto black */

    @font-face {
        font-family: 'Roboto';
        font-style: normal;
        font-weight: 900;
        src: local("Roboto Black"), local("Roboto-Black"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-Black.ttf") format("truetype");
    }

    @font-face {
        font-family: 'Roboto';
        font-style: italic;
        font-weight: 900;
        src: local("Roboto Black Italic"), local("Roboto-Black-Italic"), url("<fmt:message key="complementos_apps.url"/>/fonts/roboto/Roboto-BlackItalic.ttf") format("truetype");
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
                <a target="_blank" href="<fmt:message key='web_istac_base.url' />/aviso_legal.html">Aviso Legal</a>
                <a target="_blank" href="<fmt:message key='web_istac_base.url' />/politica-privacidad.html">Política de privacidad</a>
                <a target="_blank" href="http://www.gobiernodecanarias.org/principal/sugrec/">Sugerencias y relamaciones</a>
                <a target="_blank" href="<fmt:message key='web_istac_base.url' />/servicios/atencion.html">Consultas</a>
                <a target="_blank" href="<fmt:message key='catalogo_apis.url' />">Catálogo de API abiertas</a>
            </div>
        </div>
        
    	<div class="social">
            <a target="_blank" href="http://public.tableau.com/profile/istac#!/">
                <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAU5SURBVGiB1ZpdiFVVFMd/63ZntFFTKy2zhCZNKoI+bCroy8yXvsGHYsyHqEj6YCSwpHwSC8OHMqMgepBqpoIINAkCKYJ6UFOMCJ3KUCKSyhnTcZoZbf497HO9e87d595zztw7o384cPZae6+91tl7r7322seoEyRNAG4E2oDLgcuAqdED8E/0/AL8DGwHdpjZYL10yA1JLZKWSvpcUr+yo1/SVkntklrGw4ALJL0i6UgKZZ+QdF+Ker2SXpY0cywMmCBptaTjGb56u6SFGeofl/Si3FRtiBE3SOrOoFBeQ0rYJ2lBWv0KKY1YAXyDW8RjhfnAt5I60lS2akxJBeAN4OmI9B/wUvS+FigGmm0GOr3ydmAAuN2jLQKeDLT15a8CpkXvbwIdZjacpGuiIZER7wPtHnnIzCZE/AEgNI+/AD71yl8C/cC9Hu0WYFmgrS//IDDH43UBy6oZk2TI64F5O+jxBxqwRnz5BwP8t5P0Da6RaE2kmptjjOVJa6bCkMhTvNpwlfJjvaSb4sQRhsj57k6guY4dzwRm1VFeE7BJ0ggd415nJWUXuw84HuOf8N53U2nwROCqGO21BIVqyf8B+CtB/nzgOWBdhVS5sMPfsdsSFEiEpCtSLuq88q/02vdJmlHi+SPSAfiB24OSronJGjazdyOhjwFnxfhZplAt+e3A5CryJ0U6r4ZoH5E0CfidcsidhDT7yGhQbR8J4Qgw28z6S4v9AWobkQe9wLbo6WmA/GnA/VD2Wo80oBOAPWa22MwWA3sa1Ec7QCFyuXc0qJOxwCJJzQXc8fTs8dYmBQ7gpuihGL0FaCvgzthxvAdcEqCbpFZJrdSInHPClx/f4z6OpuhXgXZtRcJnjEGcR4ijCdg/KlWrI6/8eQVctuNMx9wi5cPLaLATN4fj+NF7/xo4HKhzMXDzKPufbpK6gaPAco/xN/AbcK1Hmwd8mCDoUTPblEcDSUuATwKsj4CnvPKAmf0bbd5+jLcFmFlaUNOBuzzm98AfMVo9I9g0OA+43isfwCX3LgUu9OhTAJC0KxDQvSNpcoYA8E9J+wPPqbO7pA8S6hxK2ce6SE5XgPddkbB3yooZ0RPHQe99FtBah75C6C2Qzd2doBw7nahRNw+GPfkDGdrtLwLdAcZsYGGA3hdtSkg6DJybUdFaOOnJTxP9ltBdAHYEGHfjvMHphA5JPcCSAG9HEZdA62fkoep0xMToiaMf2FkwsyHC8cuZgm1mNlQ6j3RWrZoft0rqiabEbQ3qowvKEeZmnBuuR7jio4jbbBuFXuCzERS5SxYfp3sWRZLWlHh+zL8Bl5WYFJWnSIp/TZnZkUjoNCrPJOdk0CskHzPrjeRPpTIT6svvw90UVELupqgaery6h1N++bckrU9Zt1YS28fziZ9I7mptX5XGeQyZI6k5Zd20huxVLGU6Yuiiq+KlwFCiteOPQWBptG2cQkU23sx2AcnDNv5YaWa748TQ1RlmtkHSXOCZHB0dA0565dINU69HK5AvIbjRzDZmaiGpIKkzxxq5M4XsOTnWSKfcdWAQwREBMLNhSctwqc7SyEyVVAr7kzbPe6LRLKELFw897tGSouYmT/5FHn0jsCLz/WEckjokDVbxItWQxWvFMSDp2VEpHzBmgaq75nobslfSdXU1wjOmWdIquUuWRhlyTNILiu0TjTJohqS1cj/C1MLVcrdhtdAjaY2k8xtuQMCgFkkPS9qibKNUQp+kzZIekjSqRHrdEtGSmhj541krzjuVAr2jOA/4K/AT5R/P6pLE+B/rJDTq+3qLeQAAAABJRU5ErkJggg==" alt="Logo de Tableau" />
            </a>
            <a target="_blank" href="https://twitter.com/istac_es">
                <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAR0SURBVGiBzZldiJRVGICfM7qrrrYJudqFFSVodFEWKhZmROaFN1mB2s9N4UURViZZFtGf5IXRHxUVVBdSRDeZlUV2U1lUQqUX/lAWRRGR/6uy26pPF2cmxnF25vvOfLPrA8PuzJzznveZnf3Oe94vUBDqKGA2MAOYBlwAjAe6y0MOAQeAX4BdwBbg2xBCf1E5JKN2qbeoH6tHzc8RdaN6s9o1HAKT1DXqwYTkB+OA+pQ6cSgERqmPlD/JdnFEfVjtbJfELHVXGwVq2anOKFpiudo/hBIV+tW7ixAI6jPDIFDLi2opVaKkvjXMAtWsM0VGfW64M6/Dy3kllg93xg1YVi/nUEdiJrAZaM/lr3UGgLkhhG+qXzxJxFhmbAOmDmFiKewELgkh/Ft5YWTNgJU0lhgAOlpIoA/YCGwC/gTGAtOBm4Bzc8S5EFgBrDnlHXWijXfsveprLXy3P1XPq5eV2mHczY+on6tPqAvUrQ3iHVYn1Au2pkkiX6k96r4Eia/V0c0+ZnVE1e/PZ4i7ujZAl7Foa8S75bEL1eM5JE6oFzeTqMlnkXpM/UH9vUHs/eoYgMoGcz1wZpP4ewFCCOuB24FjGfPaHELYlkcE+AfoAd4BJjcYNx647v9nxjNBM16pjqDOVndkmPdoTom8pdGGyqRRZivL19VZcITxa/CJ2jfIvIUJIq9nlND4T9+JOjfjhJ9sUOuo49Qb1GfVz9SfjVe66Qkiv+UQUZ2Del+OCXfmTSoF9e+cIveWiI2CLHwBrFLnt9GhQnfzIScxrQRMyTj4o/LY0epFORfKjNoNNN1zaphSovllt8LlIYSBEMKGEML2nAvlIes3pJrxJeCMjIPnq5MSFsnLzIQ53XlOXF3AkwmL5OWqlEkl4HCO8UvVe1IWyoI6FliQMLW3RGxjZiUAD6lvqldbrnMK5EZgXMK8/SOB3cA1OSbtBJaGEI4nLDgoxsp3VeL03SViQzkPc6l3oGmd24gHphR2oc7JuYtqLM2XFGWgTrb5MaIRV6B2mtbL7TN2W3palOhUv2xBolftqAT7oIVAJ9RNJjTPjOX6Gy2srbq+OuCSxCDH1bfVrNVB9Zol9dUWJVQXVQftMttZ/IS6x3gGf1pNahup3ep7BUjss3YLUFc3mPCXeocF3FVSrzWebYrg8XoL9BhPW43Ya/xLXGlVxyND8kGdp35YkIDqIfWsyhq1ncYHyb5HHAV+JHYm/yg/jgL95Z/dwDnEBtw8GjcRUlgZQlhbeVIr0glsJX1jGip2ANOrW6YnXTLLbywmtjZPV/qBW6sloEYEoNyDWjlUWSWwIoTwfebRnh633Gp5Kbe2ccNaN9yZV5F2660sE9S1wyyg+oKpEjVCyxy8k9hO+tS7WhaokbnMbL3eotiuXlqoRJVMp/qAsXRuF4fU+62U5u1EnaA+ZixZiuKg8ebO2W0XqCM0Rl2svm/zOq0evep6Y0e/pUbGKbenW5DqAGaVH1OB84EJxJpLoBfYA/xK7BN8B2wJIQwUsf5/XTvLeAZPS20AAAAASUVORK5CYII=" alt="Logo de Twitter" />
            </a>
            <a target="_blank" href="https://www.slideshare.net/ISTAC">
                <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAUSSURBVGiBxZpJjBVVFIa/+2zBKCCKYggyiFEgBgFnYxzQoBvYkFYcGmJMMA6JK2OEaNiYqOhCNIBunAUhTnFCQQJLIi5ACRKgI4NEjNIYhQhC9+ei6nU/Xle996rqdfe/ecM995z/r1t1h3Mq0CSoY4HbgOuAy4EJwPnAkNjkKHAY+AXYBWwBNoYQ9jeLQ26o49Vn1B3mx071WXX8QAiYrq5WTxUQUI1OdY06rT8EjFCXxkH7EmvUi/pKxFz1SB8LqESHOreZAgapb/SjgGqsUAcVFXGOunYARZSxQR1Wi2uoIWIIsB64odDVaB42AzNDCEeTGhOFGA3ll8DMhOYfgXeAA81iWIXRwHxgekLbOmB2COG/hjyZ/ky8oZ7ZRNJp8VvUV1M4rEjq02tEjGaKDxNsdwLTQggn1CuAx4DLknzk5Q+0A6+HELbFF2wLMDXB9t4Qwup0T3qR6VPs4thmknos1yPbGI6rV8axnkqx6VBHVnIvVWlZAgxP0fl7/LkAOLvO1S2CwcAj8fdDKTbnEXHtRrcQ9SpgXgOBxuRhlxFj409r2MxXu2+7yhF5mubd7/2BACwq/yhBtIsF5gwQoSJoVcdBz4jMA84YOD65UQLayl8A7h84LoXxAEBLPDSTmuDwb+BtYA8wDngQGFFlcwxYBmwFLgAeAoqePyarY1qIjqdFsR2YFULYV/5DfRn4DLg+/usAMCOE0F5h8zqRsAUF488oAdcWdNIJtFWKAAghHCIa9uPxX49UiohtTgJPALsLcrimRJQoKIIfQgjbkhpi4puAI8DaFJvjwCcFOUwsAZcWdHKkTnsHcCyEUGtx+6cghwkl0rckjWKqKTtiNQBXA6OtnSW5uSCH4SV68k5p+JdoB7ohpX0UsDCl7XFgItEqvFyt3tuhzgHuSum/nmjmO1mH41DUEw3sSLsPWOqT6n9V7Z3qK+qI2OZc9Tn1ZJXdJvUao/PGKHVxgq8u9dmKeLc3wO8E6uEGDA+pkyucT1CXqD97em6rM/aXJ991WH1PnV4VZ18Dff8MajtRerMejgAPhxA+qro1zor7D6P3bToEWB5/LgP2E03XEO1s/wL+APYB+0MInbHPALQCK+i9qCZhD+q6jFdurTqxAedloZeqszPY36puzsjpG9TXMnbS6Ll6yTopmixQp6hf5eCiuhR1fs7OquuaKOTTAjzaSkQrb16kHUUrCQ5t0Nf6Ajw2luL6xI6cDtrrm9CmPt6A3dacHLaHEA6WF6hVOZ382qDd4AZsfsvJ4QPoOVi9T8+0mAV/5gyehDzxO4GVEAsJIewFPs7hqCVHnzRMrm/SC6vLpbvKvc/z1E6/JOHcHMHTkPVc1AW8WP7RLSSEsJUoOZ0Fd2S0T4TRSn5fxm5vhRB+THM40mxVqZNWJMlSfD6qvlDHpjXjutGhXlhTpnpPRqe71FE1/L2pbq7RPlr9LWPM1poiKpyvyOh4r3pTgp859hRO2xLap6i7M8ZalsS5VqHnC+DOhpTH3YhW57VEO+VbiFJC5eewC/icqPIUgBuBWfROpNfCt0SFnl4HrXqlt+/oSecMNGqW3mrCqBj6dcah7wt8Z+N7tlQxg8z+zDQTy2xmuU+922ja6y902OjslEPM+fb9Kxxd6rtWldb6StBUdZXNfanmlLrSuH7Yr1DHqYvU7QUE/KQuNHrfKzeaVmpTL+b0F88uAS4EzolNjhFlTMovnn1P9OLZwWbE/x93EiZJ8BqAwQAAAABJRU5ErkJggg==" alt="Logo de Slide Share" />
            </a>
            <a target="_blank" href="<fmt:message key='web_istac_base.url' />/herramientas/rss.html">
                <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAUZSURBVGiBzZlJiB5VEMd/NcaZJDrGuCR6UMS4IKImOomgBDyIFxVBcYuIHjyohERBRaJBQSIE3KJxPam4HFRQYzy4QQwBdVwgSMzihnuGSJJJMjrZfh76+7TT091ff8vM+Ic+dL16VfXv5b2qekGHoPYAc4BzgVOAGcCU2iUwCGwDvgc2AP3ApxEx3KkYWoY6WZ2nrlSHbB5D6rvqderk8SAwXX1Q3dpC8EXYXrM5bSwI9Kj3qLs6SCCLXTUfPaNFok/dMIoEslivzu40idvU4TEkUcewurATBEJ9eBwIZLFc7WqVRJf60jgTSOMlWyGjPjrekefgqWZJLCwxNqT+on6n/maybI4lFlQl0Wf5j31fzpwe9Qz1CnWp+pm6d5SIDNtoNasF1GiJHUGkwNaR6q3qJ6NAZr3aXeb83gpGKhHJ2J2pvqju6yCZRUXOplttx26aSMrHbLW/Q0R2qkfXbaeXswXAqCZuEdFPkh0vAP5u09whwG0HSEyy2KoJYMtvJONzlrqxzbeyTZ0EEDWj1wKvVIzhK+BboBfYUbu+B9YDayLijybITAVWAOdXfgIjMS8iXq0bXNnmk0ljrbpIPa4imUnqO234W1E31GNrRVEj7FafV2dUIDNRXdWin51qN+rcDgVehL/U+y1b9xMyh6tft+hjbhdJnd0MlgLdERHAYcAJwEXAYmA1sD+jPxG4D1itnlBkNCK2AVcCu5qMB6AP9bkm2ZeuWurxJmnKYM7czWpfg/k3tvBGnkb9sJNEUgFNU1/ImT+oln4F6gdNxvReF3B4lcCaRUQMRMQNJJ/LYGqoF1ipnlIyfT6wuwl3U7uAQ5sPszoi4nXgAmBzSnwU8Jq1zSxnznrgxSbc9Ia6gaShVhUfA+tqwWwHfiX5yVdFxJ6iSeqZtblTUuLHIuL2Av0ZJJvshAoxbUT9osnvsQhb1SXqlCJv6sXq/tScPerMEv03Kvr+vJWfvREG1ItKgns8o7+yRPeyij7fb2X5rYK96s0FwR2m/p7S3a/OKtDtVv+s4O+ZLpKGcqdxEPCkeml2ICIGgYfSIuCmPCMRsRv4qIK/De2kKCtMNq9L1DvVTTk629Vjs17VXpMcqY4tau5Prd5SIZbzW0ka96nzchxOVF/P0X+2IMCXM3q5m6RJmVyGJGmsKTeTRj9S9H5NCrSfMvp7zOmwq9dn9O4ssVlW678F/5W6LxcFl4PcJwwQEUPACxnxBOCSHPU1mfvTS2z+XBLPK/AfkbdITpMaQZLqsAybcmQX5sh+5MC6/aQSm5sL5FtJKsyESI11lXZkANMb6ByTIxtRLUbEfmAgJZpaYnNHgXx5LfYDuijLqFYLXF00oEbBeBH5tL+ynG9ngezx+s2/RCJiAFhSYqyO+9WzCsYWA2fnyIueaPpUqqw9dHCO7IGI2FK/ifRIbRlbC5xaYhSSp7EUeAPYApwGLAQuL9DfAWzMkZ+ZCvIvkmQ0DyeTVKN1fAPMrG2YQIYIgHoOyYoyOmd47WMYOC8ivkwLRxycRMQXwF1jFVULuCNLohT+Pw96nmyatsnRWzaNGE+0dvRWIxPqQ+NMQPUJWyWRIbTQ8Tme/lud3zaBDJk+k5OiscI6NW9P6giZbvVuD6wlOo1B9S4btFg7Regok35ulTK0Krary9S8XG3UCU1Wr1HftrW3tEN9U73Kgh5XVYzY2dsgdTDJsdockj7ZicARJKmFJGnKFuAHkj7BZ0B/WS+sGfwDboyhd6KCVDsAAAAASUVORK5CYII=" alt="Logo de RSS" />
            </a>
            <a target="_blank" href="https://www.youtube.com/user/istacES">
                <img src="data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAXEgAAFxIBZ5/SUgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAARGSURBVGiB1ZpLqFVVGMd/63jzkXpJRa+l+YhKR2lvR0Lac9AshYJAIiFKiAZFGThwUoT0oCQQonCghiMrIujhSLCsUSZqipSPJNNrPirlen8N1jl63O6973mse47+YE/2Xo//f+91zv7W9+1AItSZwAPAPcAcYBYwCRhXbXIGOA4cAPYCPwBbQwgHU2loGXW2ukrdY+v8or6uzuqGgTvVzeqFNgxkGVA3qfM7YaBPXa8OJjSQZbA6R99wmXhS7R9GA1n61aUpDYxU13XQQJYP1ZHtmhirftVFEzW+VXvLtIYSE+OBr4H727ob6dgOPBRCOJN3sZJ30vgoN3P1mABYAGxRR+VdzDUCfAA8MmySWmcR8G5DLdWlXf01NMZTWd0hY6IP2A3ckOL2DSP9wNwQwp+1Ez2ZBmto3MQAMW7aBfxOjKOOA+eB/4B/M+3HA2OIsVdv9egDpgAzq0fhn0+GCcCbwDNXXFHvcug39gH1HXWxBT+6VlHHqPPV59Ut6ukhtAyq8/IG2lzS6bDxzT4ipfgGjC1XD5Xo2pjtNNviAHC7OrlTBrKoveoXBdoGjNuHi41XlTyJrpmo0zdK/alA48r6hkX7iRVd1H8Z6uMFGnfWGswoaKA6rcv6L2JcYkXMqACLC/qeDyEcbnKyRero9mVfSQjhFPGvPY+FFeDuhPOtAg6oLxuDzk5xX4WYKEjFCGAq8BZwSH1PvTHh+EXchrq/YN2da3Y0dVvOOGfUt9Wb2lWrnivQ+muFtHFVNuQBGAu8RFxy69VbE85XY0KFS3mnFBRtCwBGAk8Du6qGUi7p8WUTX1P0EDOAExONN1hy7TzwKbA6hLAv0Xw1TvcAJ0lnZCDn3FlgHbAmhHAk0TxZ+nuA/cAtiQasfyKngE+AN0IIRxONX8S+CrAn4YAXgD+AV4DpIYQXO2ACYG8PsCPhgKuBbSGEpt9BbbID9eaSYKw0KdZJ1GklOqdVqvWJXQX9F3ZS7BAsKTi/82Jwa6xP5PGjiffmraBOVY8WaHy1vuEs47Yxj8+7ucSMpYyi3eGAOiPbYVPJGjyiPqde30EDPeqykiehuiGv43yHTgedNSYCVhjTR2MTix+tPqy+rx4cQssF9Y5a32ym8WNgWTNzAweB34C/gKPEF+FJ4J/q8Xdd+8ClaHsMsVg6iZicm0ssoDaacvoohPBskZEpxBfktZAynRNCOFY7cVn0W82lLu+0qhZ4od5EIcZy19XK2jzNuUlj9TrgM+DRtu5ber4DHgshXJFNKSu9jSOW3hYMo7Bm+B54sKj0VoqxGPpld1eSqt/Y7kvZWJ7u5m9mrXGpp0Fdop7ooIET6hPJDGTMTDQm3VJ+g5Kl9gnHlGExkTE0T91ocaDZCgPqBuvCjo6hzlRXqjvbMPCz+prZKLZJGi0+NmJqOvHDs3uB24HZwGRiphFiNuUYsYC6h7jF3tpsxr+I/wExsYskARObaQAAAABJRU5ErkJggg==" alt="Logo de YouTube" />
            </a>
        </div>
    </div>
</footer>
</fmt:bundle>
