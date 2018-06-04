<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : studentoptions
    Created on : Apr 22, 2018, 9:38:46 AM
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
<input type="submit" value="Enter Issue" name="b1">
<input type="submit" value="See issue status" name="b2">
<input type="submit" value="Enter Suggestion" name="b3">
<input type="submit" value="see suggestion status" name="b4">

<c:if test="${param.b1!=null}">
     <c:redirect url="mainstudent.jsp"></c:redirect>   
</c:if>   


<c:if test="${param.b2!=null}">
    <c:redirect url="checkissuestatus.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.b3!=null}">
     <c:redirect url="addsuggestion.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.b4!=null}">
     <c:redirect url="checksuggstatus.jsp"></c:redirect>   
</c:if>  

        </form>
    </body>
</html>
