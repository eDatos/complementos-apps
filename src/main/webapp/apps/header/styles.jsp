<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="application">
<style>
    /* Bootstrap */
    html {
        min-height: 100%;
        height: 100%;
        box-sizing: border-box;
    }

    body {
        position: relative;
        box-sizing: border-box;
        min-height: 100%;
        margin: 0;
    }




    .istac-header {
        font-size: 14px;
        font-family: "Roboto", -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    }

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
        margin-bottom: 1em;
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

    .istac-navbar .align-items-center {
        align-items: center;
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
    .istac-navbar .nav-link .border {
        border: 1px solid #8CD2EA;
        padding: 2px;
    }

    .istac-navbar .nav-link:focus,
    .istac-navbar .nav-link:hover {
        text-decoration: none;
    }

    .istac-navbar .navbar-brand {
        display: inline-block;
        padding-top: .25em;
        padding-bottom: .25em;
        margin-right: 1em;
        font-size: 1.25em;
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
        color: rgba(255, 255, 255, 0.75);
    }

    .istac-navbar .navbar-inverse .navbar-nav .nav-link:focus,
    .istac-navbar .navbar-inverse .navbar-nav .nav-link:hover {
        color: white;
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
        src: url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.eot?v=4.7.0");
        src: url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.eot?#iefix&v=4.7.0") format("embedded-opentype"), url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.woff2?v=4.7.0") format("woff2"), url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.woff?v=4.7.0") format("woff"), url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.ttf?v=4.7.0") format("truetype"), url("<fmt:message key="complementos_apps.url"/>/fonts/font-awesome/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular") format("svg");
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

    /* Navbar CSS */

    .istac-navbar .collapse.show .nav-link,
    .istac-navbar .collapsing .nav-link {
        padding-left: 7px;
        padding-right: 7px;
    }

    @media (max-width: 1199px) {
        body {
            padding-top: 50px;
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
        margin-right: 15px;
    }

    .istac-navbar a.nav-link {
        font-weight: 400;
        line-height: 50px;
    }

    @media (min-width: 1200px) {
        body {
            padding-top: 70px;
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

        .istac-navbar ul.navbar-nav .nav-item:last-child {
            margin-right: 36px;
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


    /* TITLE BAR */
    .istac-title-bar {
        border-bottom: 2px solid #59656e;
        padding: 15px;
        background-color: #fff;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        flex-wrap: wrap;
    }

    .istac-title-bar .content {
        flex-grow: 1;
        display: flex;
        flex-direction: row;
        justify-content: flex-end;
    }

    .istac-title-bar .istac-app-header-title {
        margin: 0 !important;
        font-size: 1.5em;
        font-weight: 500;
        color: #59656e;
    }

    .istac-title-bar .istac-app-header-title .fa.fa-istac-home {
        vertical-align: bottom;
        width: 23px;
        height: 23px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        opacity: 1;
        background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI5bW0iIGhlaWdodD0iOW1tIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCA5IDkiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPjxtZXRhZGF0YT48cmRmOlJERj48Y2M6V29yayByZGY6YWJvdXQ9IiI+PGRjOmZvcm1hdD5pbWFnZS9zdmcreG1sPC9kYzpmb3JtYXQ+PGRjOnR5cGUgcmRmOnJlc291cmNlPSJodHRwOi8vcHVybC5vcmcvZGMvZGNtaXR5cGUvU3RpbGxJbWFnZSIvPjxkYzp0aXRsZS8+PC9jYzpXb3JrPjwvcmRmOlJERj48L21ldGFkYXRhPjxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsLTI4OCkiPjxnIHRyYW5zZm9ybT0ibWF0cml4KC45ODk4NSAwIDAgLjk4OTg1IC0zODAuNDkgLTIzLjAyKSI+PGcgdHJhbnNmb3JtPSJtYXRyaXgoLjA4Nzc4NCAwIDAgLjA4Nzc4NCAzODQuNzMgMzE0LjI3KSIgZmlsbD0iIzY2NiIgZmlsbC1vcGFjaXR5PSIuOTkyMTYiIHN0cm9rZS13aWR0aD0iMi44NDg1Ij48cGF0aCBjbGFzcz0ic3QwIiBkPSJtNDggMTgtMzIuOCAyNC45IDQuNiA2LjEgMjguMi0yMS41IDI4LjIgMjEuNSA0LjYtNi4xem0wIDEzLjUtMjUuOSAxOS43djI2LjhoMTkuOHYtMjFoMTJ2MjFoMjAuMXYtMjYuN3oiIGZpbGw9IiM2NjYiIGZpbGwtb3BhY2l0eT0iLjk5MjE2IiBzdHJva2Utd2lkdGg9IjIuODQ4NSIvPjwvZz48Y2lyY2xlIGN4PSIzODguOTQiIGN5PSIzMTguNzUiIHI9IjQuMjc2MyIgZmlsbD0ibm9uZSIgb3BhY2l0eT0iLjYiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9Ii41Mzk2NCIvPjwvZz48L2c+PC9zdmc+');
    }

    .istac-title-bar a {
        text-decoration: none;
    }

    .istac-title-bar h1,
    .istac-title-bar h2,
    .istac-title-bar h3,
    .istac-title-bar h4 {
        font-weight: normal;
    }

    @media (min-width: 430px) {
        .istac-title-bar .istac-app-header-title {
            padding-right: 20px;
        }
    }

    @media (min-width: 768px) {
        .istac-title-bar {
            padding-left: 36px;
            padding-right: 36px;
        }
    }

</style>
</fmt:bundle>
