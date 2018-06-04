<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Login
    Created on : Mar 27, 2018, 11:16:00 PM
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
        <form name="f1">
            <input type="submit" value="Admin" name="b1" />
            <input type="submit" value="Faculty" name="b2" />
            <input type="submit" value="Student" name="b3" />
        </form>
        
        <c:if test="${param.b1!=null}">
            <c:redirect url="admin.jsp"></c:redirect>
        </c:if>
        <c:if test="${param.b2!=null}">
            <c:redirect url="faculty.jsp"></c:redirect>
        </c:if>
        <c:if test="${param.b3!=null}">
            <c:redirect url="student.jsp"></c:redirect>
        </c:if>
    </body>
</html>
