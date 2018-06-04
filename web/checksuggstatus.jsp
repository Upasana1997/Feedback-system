<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<jsp:include page="bootstrap.jsp"/>

<%-- 
    Document   : checksuggstatus
    Created on : Apr 27, 2018, 1:56:49 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/checksuggstatus.css">
    </head>
    <body>
        
       <form name="f1">
            <div class="table-users">
                <div class="header">Suggestions</div>
            <table cellspacing="0" table-responsive>
                
                    <tr>
                        <th><b>Suggestion Category</b></th>
                        <th><b>Suggestion Added</b></th>
                        <th><b>Status</b></th>
                        <th><b>Any Reply</b></th>
                    </tr>
                
                <tbody>
                
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
       
         <sql:query dataSource="${db}" var="rs0">
         select * from tbsuggestions where username = '${get_username}';
        </sql:query>
         
         <c:forEach var="table" items="${rs0.rows}">
                <tr>
                     <td><c:out value="${table.subject}"></c:out></td>
                     <td><c:out value="${table.suggestion}"></c:out></td>  
                     <td><c:out value="${table.status}"></c:out></td> 
                     <td><c:out value="${table.reply}"></c:out></td> 
                </tr>
         </c:forEach>          
             </tbody>
            </table>
                    </div>
                </div>
            </div>
         </form>  
        
    </body>
</html>
