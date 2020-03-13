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
