package es.gobcan.istac.complementos_apps.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Enabling CORS support - Access-Control-Allow-Origin
 * <code>
 * <!-- Add this to your web.xml to enable "CORS" -->
 * <filter>
 *      <filter-name>CORSFilter</filter-name>
 *      <filter-class>es.gobcan.istac.complementos_apps.filters.CORSFilter</filter-class>
 * </filter>
 * <filter-mapping>
 *      <filter-name>CORSFilter</filter-name>
 *      <url-pattern>/api/*</url-pattern>
 * </filter-mapping>
 * </code>
 */
// https://gist.github.com/zeroows/80bbe076d15cb8a4f0ad
public class CORSFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        response.addHeader("Access-Control-Allow-Origin", "*");
        if (request.getHeader("Access-Control-Request-Method") != null && "OPTIONS".equals(request.getMethod())) {
            // CORS "pre-flight" request
            response.addHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
            response.addHeader("Access-Control-Allow-Headers", "Content-Type");
            response.addHeader("Access-Control-Max-Age", "1");
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}