<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="enlaces" value='${fn:split(param.enlace, "|")}' />

<!-- MIGAS DE PAN-->
<p class="txt">Está en:</p>

<ul>
	<c:forTokens items="${param.texto}" delims="|" var="currentName"
		varStatus="status">
		<c:choose>
			<c:when test="${status.last}">
				<li>
					<strong><c:out value="${currentName}" /></strong>
				</li>
			</c:when>
			<c:otherwise>
				<li>
					<a href="${enlaces[status.index]}">
						<c:out value="${currentName}" />
					</a>
				</li> 
                >
			</c:otherwise>
		</c:choose>
	</c:forTokens>
</ul>