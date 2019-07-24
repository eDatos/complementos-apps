<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/css" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

/* HEADER */
/* Bootstrap */
.istac-navbar *,
.istac-navbar *::before,
.istac-navbar *::after {
    box-sizing: inherit;
}

@-ms-viewport {
    width: device-width;
}

.istac-navbar ul {
    margin-top: 0;
    margin-bottom: 1rem;
}

.istac-navbar a {
    color: #0275d8;
    text-decoration: none;
}

.istac-navbar a:focus,
.istac-navbar a:hover {
    color: #014c8c;
    text-decoration: underline;
}

.istac-navbar a:not([href]):not([tabindex]) {
    color: inherit;
    text-decoration: none;
}

.istac-navbar a:not([href]):not([tabindex]):focus,
.istac-navbar a:not([href]):not([tabindex]):hover {
    color: inherit;
    text-decoration: none;
}

.istac-navbar a:not([href]):not([tabindex]):focus {
    outline: 0;
}

.istac-navbar img {
    vertical-align: middle;
}

.istac-navbar a {
    touch-action: manipulation;
}

.istac-navbar .d-flex {
    display: flex !important;
}

.istac-navbar .justify-content-end {
    justify-content: flex-end !important;
}

.istac-navbar .justify-content-between {
    justify-content: space-between !important;
}

.istac-navbar .fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}

@media (max-width: 1199px) {
    .istac-navbar .hidden-lg-down {
        display: none !important;
    }
}

@media (min-width: 1200px) {
    .istac-navbar .hidden-xl-up {
        display: none !important;
    }
}

.istac-navbar .nav-link {
    display: block;
    padding: 0.5em 1em;
}

.istac-navbar .nav-link:focus,
.istac-navbar .nav-link:hover {
    text-decoration: none;
}

.istac-navbar .navbar-brand {
    display: inline-block;
    padding-top: .25rem;
    padding-bottom: .25rem;
    margin-right: 1rem;
    font-size: 1.25rem;
    line-height: inherit;
    white-space: nowrap;
}

.istac-navbar .navbar-brand:focus,
.istac-navbar .navbar-brand:hover {
    text-decoration: none;
}

.istac-navbar .navbar-nav {
    display: flex;
    flex-direction: column;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}

.istac-navbar .navbar-nav .nav-link {
    padding-right: 0;
    padding-left: 0;
}

@media (min-width: 1200px) {
    .istac-navbar .navbar-toggleable-lg {
        flex-direction: row;
        flex-wrap: nowrap;
        align-items: center;
    }

    .istac-navbar .navbar-toggleable-lg .navbar-nav {
        flex-direction: row;
    }

    .istac-navbar .navbar-toggleable-lg .navbar-nav .nav-link {
        padding-right: 7px;
        padding-left: 7px;
    }

    .istac-navbar .navbar-toggleable-lg .navbar-collapse {
        display: flex !important;
        width: 100%;
    }
}

.istac-navbar .navbar-inverse .navbar-brand {
    color: white;
}

.istac-navbar .navbar-inverse .navbar-brand:focus,
.istac-navbar .navbar-inverse .navbar-brand:hover {
    color: white;
}

.istac-navbar .navbar-inverse .navbar-nav .nav-link {
    color: rgba(255, 255, 255, 0.5);
}

.istac-navbar .navbar-inverse .navbar-nav .nav-link:focus,
.istac-navbar .navbar-inverse .navbar-nav .nav-link:hover {
    color: rgba(255, 255, 255, 0.75);
}

.istac-navbar .navbar-inverse .navbar-nav .nav-link.active {
    color: white;
}

.istac-navbar .collapse {
    display: none;
}

.istac-navbar .collapse.show {
    display: block;
}

.istac-navbar .collapsing {
    position: relative;
    height: 0;
    overflow: hidden;
    transition: height 0.35s ease;
}

/* Font Awesome */

/* FONT PATH
* -------------------------- */

@font-face {
    font-family: 'FontAwesome';
    src: url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.eot?v=4.7.0"/>");
    src: url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.eot?#iefix&v=4.7.0"/>") format("embedded-opentype"), 
        url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.woff2?v=4.7.0"/>") format("woff2"), 
        url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.woff?v=4.7.0"/>") format("woff"), 
        url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.ttf?v=4.7.0"/>") format("truetype"), 
        url("<c:url value = "/fonts/font-awesome/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular"/>") format("svg");
    font-weight: normal;
    font-style: normal;
}

.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
readers do not read off random characters that represent icons */

.fa-bars:before {
    content: "";
}

/* Roboto font */

@font-face {
    font-family: 'Roboto';
    src: url('<c:url value = "/fonts/roboto/Roboto-Regular.eot"/>');
    src: local('Roboto'), local('Roboto-Regular'),
        url('<c:url value = "/fonts/roboto/Roboto-Regular.eot?#iefix"/>') format('embedded-opentype'),
        url('<c:url value = "/fonts/roboto/Roboto-Regular.woff2"/>') format('woff2'),
        url('<c:url value = "/fonts/roboto/Roboto-Regular.woff"/>') format('woff'),
        url('<c:url value = "/fonts/roboto/Roboto-Regular.ttf"/>') format('truetype'),
        url('<c:url value = "/fonts/roboto/Roboto-Regular.svg#Roboto-Regular"/>') format('svg');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'Roboto';
    src: url('<c:url value = "/fonts/roboto/Roboto-Bold.eot"/>');
    src: local('Roboto Bold'), local('Roboto-Bold'),
        url('<c:url value = "/fonts/roboto/Roboto-Bold.eot?#iefix"/>') format('embedded-opentype'),
        url('<c:url value = "/fonts/roboto/Roboto-Bold.woff2"/>') format('woff2'),
        url('<c:url value = "/fonts/roboto/Roboto-Bold.woff"/>') format('woff'),
        url('<c:url value = "/fonts/roboto/Roboto-Bold.ttf"/>') format('truetype'),
        url('<c:url value = "/fonts/roboto/Roboto-Bold.svg#Roboto-Bold"/>') format('svg');
    font-weight: bold;
    font-style: normal;
}

@font-face {
    font-family: 'Roboto';
    src: url('<c:url value = "/fonts/roboto/Roboto-Italic.eot"/>');
    src: local('Roboto Italic'), local('Roboto-Italic'),
        url('<c:url value = "/fonts/roboto/Roboto-Italic.eot?#iefix"/>') format('embedded-opentype'),
        url('<c:url value = "/fonts/roboto/Roboto-Italic.woff2"/>') format('woff2'),
        url('<c:url value = "/fonts/roboto/Roboto-Italic.woff"/>') format('woff'),
        url('<c:url value = "/fonts/roboto/Roboto-Italic.ttf"/>') format('truetype'),
        url('<c:url value = "/fonts/roboto/Roboto-Italic.svg#Roboto-Italic"/>') format('svg');
    font-weight: normal;
    font-style: italic;
}

/* Navbar CSS */

.istac-navbar .collapse.show .nav-link,
.istac-navbar .collapsing .nav-link {
    padding-left: 7px;
    padding-right: 7px;
}

@media (max-width: 1199px) {
    .istac-navbar {
        margin-bottom: 50px;
    }
}

.istac-navbar ul.navbar-nav .nav-item {
    margin-left: 7px;
    white-space: nowrap;
}

.istac-navbar ul.navbar-nav .nav-item .nav-link {
    font-size: 16.8px;
}

.istac-navbar ul.navbar-nav .nav-item .nav-link:hover {
    color: #e7e7e7;
}

.istac-navbar ul.navbar-nav .nav-item:last-child {
    margin-right: 36px;
}

.istac-navbar a.nav-link {
    font-weight: 400;
    line-height: 50px;
}

@media (min-width: 1200px) {
	.istac-navbar {
		margin-bottom: 70px;
	}

    .istac-navbar a.nav-link.active {
        margin-left: -20px;
    }

    .istac-navbar a.nav-link.active::before {
        content: '\F0D8';
        font: normal normal normal 35px/1 FontAwesome;
        position: relative;
        bottom: -35px;
        left: 50%;
        color: white !important;
    }
}

.istac-navbar .istac-navbar-toggler {
    color: white !important;
    font-size: 21px;
    vertical-align: middle;
    display: inline-block;
}

.istac-navbar .istac-navbar-toggler:hover {
    cursor: pointer;
    color: #f8f8f8;
}

.istac-navbar .navbar-brand.logo {
    padding: 10px 36px 10px 36px;
}

@media (max-width: 1199px) {
    .navbar-brand.logo .logo-img {
        height: 30px;
    }

    .istac-navbar a.nav-link {
        line-height: 25px;
    }
}

@media (min-width: 1200px) {
    .navbar-brand.logo .logo-img {
        height: 50px;
    }
}

@media (max-width: 767px) {

    .istac-navbar .navbar-brand.logo,
    .istac-navbar .istac-navbar-toggler {
        padding: 10px;
    }
}

@media (min-width: 768px) {

    .istac-navbar .navbar-brand.logo,
    .istac-navbar .istac-navbar-toggler {
        padding: 10px 36px 10px 36px;
    }
}

.istac-navbar {
    font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
}

.istac-navbar-external {
    background-color: #008BD0;
}

.istac-navbar-internal {
    background-color: #2c2c2c;
}

.istac-navbar-external #navbarResponsive a:not(.active) span {
    border: 1px solid #8CD2EA;
    padding: 2px;
}

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