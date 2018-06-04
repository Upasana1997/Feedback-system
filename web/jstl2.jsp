<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : jstl2
    Created on : Mar 27, 2018, 6:03:56 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="x" value="${100}"></c:set>
        <c:set var="y" value="${200}"></c:set>
        
        <c:if test="${x<y}">
            <c:out value="x is smaller than y"></c:out>
        </c:if>
        
        <c:choose>
            <c:when test="${x>y}">
                <c:out value="x greater than y"></c:out>
               </c:when> 
            <c:when test="${x<y}">
                <c:out value="y greater than x"></c:out>
               </c:when> 
            <c:otherwise>
                <c:out value="otherwise performed"></c:out>
            </c:otherwise>
        </c:choose>
    </body>
</html>
