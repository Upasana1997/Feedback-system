<%-- 
    Document   : trybean2
    Created on : Apr 26, 2018, 5:39:57 PM
    Author     : Dell
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:getProperty name="obj1" property="username" />
        <jsp:getProperty name="obj1" property="m_id" />
        
        <c:set var="m" value="${obj1.getM_id()}"></c:set>
        <c:out value="${m}"></c:out>
        
    </body>
</html>
