<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/css" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">
.content-wrapper {
    max-width: 960px;
    font-family: "Droid Sans", sans-serif;
    margin: auto;
    padding: 20px;
}

.content-wrapper h1 {
    font-size: 1.4em;
}

.content-wrapper h2 {
    font-size: 1.1em;
}

/* TITLE BAR */
#title-bar {
    border-bottom: 2px solid #59656e;
    padding: 15px 36px;
    background-color: #fff;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    flex-wrap: wrap;
}

#title-bar .content {
    flex-grow: 1;
    display: flex;
    flex-direction: row;
    justify-content: flex-end;
}

#title-bar h1 {
    margin: 0 !important;
    font-size: 1.5rem;
    font-weight: 500;
    color: #59656e;
}

#title-bar a {
    text-decoration: none;
}

@media (min-width: 430px) {
    #title-bar h1 {
        padding-right: 20px;
    }
}

#title-bar h1 .fa.fa-istac-home {
    vertical-align: bottom;
    width: 23px;
    height: 23px;
    background-repeat: no-repeat;
    background-position: center;
    background-size: contain;
    opacity: 1;
    background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI5bW0iIGhlaWdodD0iOW1tIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA5IDkiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPjxtZXRhZGF0YT48cmRmOlJERj48Y2M6V29yayByZGY6YWJvdXQ9IiI+PGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+PGRjOnR5cGUgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIvPjxkYzp0aXRsZS8+PC9jYzpXb3JrPjwvcmRmOlJERj48L21ldGFkYXRhPjxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsLTI4OCkiPjxnIHRyYW5zZm9ybT0ibWF0cml4KC45ODk4NSAwIDAgLjk4OTg1IC0zODAuNDkgLTIzLjAyKSI+PGcgdHJhbnNmb3JtPSJtYXRyaXgoLjA4Nzc4NCAwIDAgLjA4Nzc4NCAzODQuNzMgMzE0LjI3KSIgZmlsbD0iIzY2NiIgZmlsbC1vcGFjaXR5PSIuOTkyMTYiIHN0cm9rZS13aWR0aD0iMi44NDg1Ij48cGF0aCBjbGFzcz0ic3QwIiBkPSJtNDggMTgtMzIuOCAyNC45IDQuNiA2LjEgMjguMi0yMS41IDI4LjIgMjEuNSA0LjYtNi4xem0wIDEzLjUtMjUuOSAxOS43djI2LjhoMTkuOHYtMjFoMTJ2MjFoMjAuMXYtMjYuN3oiIGZpbGw9IiM2NjYiIGZpbGwtb3BhY2l0eT0iLjk5MjE2IiBzdHJva2Utd2lkdGg9IjIuODQ4NSIvPjwvZz48Y2lyY2xlIGN4PSIzODguOTQiIGN5PSIzMTguNzUiIHI9IjQuMjc2MyIgZmlsbD0ibm9uZSIgb3BhY2l0eT0iLjYiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9Ii41Mzk2NCIvPjwvZz48L2c+PC9zdmc+');
}

    
/* FOOTER */
    
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

.istac-footer table {
    border-collapse: collapse;
    background-color: transparent;
}

.istac-footer th {
    text-align: left;
}

/* Footer CSS */

html {
    min-height: 100%;
    position: relative;
    box-sizing: border-box;
}

body {
    margin: 0 0 170px;
    font-family: Roboto,-apple-system,system-ui,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;
}

footer.istac-footer {
    bottom: 0;
    height: 170px;
    position: absolute;
    width: 100%;
    color: white;
    box-sizing: border-box;
    font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    line-height: 1.05;
}

footer.istac-footer .footer-content {
    width: 100%;
    padding: 10px 36px;
    background-color: #59656E;
    min-height: 170px;

    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
    row-gap: 20px;
}

footer.istac-footer .flex-container {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
}

footer.istac-footer .flex-container-vertical {
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    justify-content: space-around;
}

footer.istac-footer .istac-logos {
    align-items: center;
}


footer.istac-footer .logos-interreg {
    min-height: 150px;
}

footer.istac-footer .istac-logos div a:not(:last-child) {
    margin-right: 30px;
}

@media (min-width: 729px) {
    footer .flex-container.istac-links-and-social {
        border-right: white solid 2px;
    }
    
    footer.istac-footer .istac-contact {
        border-right: white solid 2px;
    }
}

@media (min-width: 1049px) {
    footer .flex-container.istac-links-and-social {
        border-right: none;
    }
    footer.istac-footer .istac-logos {
        border-right: white solid 2px;
    }
}

@media (min-width: 1368px) {
    footer .flex-container.istac-links-and-social {
        border-right: white solid 2px;
    }
}

/* Inicio imágenes */

footer.istac-footer .footer-brand.logo .logo-img-45 {
    height: 45px;
}

footer.istac-footer .footer-brand.logo .logo-img-50 {
    height: 50px;
}

footer.istac-footer .footer-brand.logo .logo-img-60 {
    height: 60px;
}

/* Fin imágenes */

/* Inicio Tabla del footer */

@media (max-width: 711px) {
    footer.istac-footer table {
        margin: auto;
    }
}

footer.istac-footer table {
    line-height: 1.05;
    color: white;
    font-weight: 500;
}

footer.istac-footer table th {
    font-size: 12px;
    padding: 0.3rem 1.6rem 0.3rem 0;
}

footer.istac-footer table td {
    font-size: 10px;
    padding: 0.15rem 1.6rem 0.15rem 0;
}

/* Fin Tabla del footer */

/* Inicio zona de enlaces */

@media (max-width: 711px) {
    footer.istac-footer .istac-links {
        align-items: center;
    }
}

@media (min-width: 1032px) {
    footer.istac-footer .istac-links {
        padding-left: 36px;
        width: 50%;
    }
}

footer.istac-footer .istac-links .istac-links-wrapper {
    align-items: baseline;
    flex-grow: 1;
}

footer.istac-footer .istac-links .istac-links-wrapper a {
    color: white;
    font-size: 12px;
    font-weight: 500;
}

.text-right {
    text-align: right;
}

/* Fin zona de enlaces */

/* Inicio iconos sociales */
@media (max-width: 711px) {
    footer.istac-footer .social {
        justify-content: center;
        padding-bottom: 10px;
    }
}

@media (min-width: 712px) {
    footer.istac-footer .social {
        justify-content: flex-end;
        padding-top: 20px;
        width: 50%;
        padding-right: 36px;
    }
}

footer.istac-footer .social a {
    height: 27px;
    width: 27px;
    display: flex;
}

footer.istac-footer .social a img {
    width: inherit;
}

footer.istac-footer .social a:not(:last-child) {
    margin-right: 10px;
}

/* Fin iconos sociales */

/* Swagger */
h1, h2, h3, h4,
.swagger-section .swagger-ui-wrap {
    font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;    
    font-weight: normal;
}

.version-list h1,
.swagger-section .swagger-ui-wrap .info_title {
    border-bottom: 1px solid #59656e;
    margin-bottom: 10px;
    color: #59656e;
    font-weight: normal;
}
</fmt:bundle>
