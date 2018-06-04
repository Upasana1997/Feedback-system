<%-- 
    Document   : trybean
    Created on : Apr 26, 2018, 5:36:55 PM
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
        <h1>Hello World!</h1>
        
        <jsp:useBean id="obj1" scope="session" class="classes.mentors" />
        <jsp:setProperty name="obj1" property="username" value="aditi" />
        <jsp:setProperty name="obj1" property="m_id" value="20" />
        
        
    </body>
</html>
