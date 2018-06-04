<%-- 
    Document   : admin_checksugg
    Created on : May 17, 2018, 2:50:03 PM
    Author     : Dell
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%> 



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="f3">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
            <table border="2" width="400" height="100">
                <thead>
                    <tr>
                        <th>Suggestion id</th>
                        <th>Username</th>
                        <th>Subject</th>
                        <th>Suggestion</th>
                        <th>Status till now</th>
                        <th>Any reply to the suggestion</th>    
                    </tr>
                </thead>
                <tbody>
                
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <sql:query dataSource="${db}" var="rs3">
         select * from tbsuggestions;
        </sql:query>
             
         <c:forEach var="table3" items="${rs3.rows}">
                <tr>
                    <td><c:out value="${table3.suggestion_id}"></c:out></td>
                     <td><c:out value="${table3.username}"></c:out></td> 
                     <td><c:out value="${table3.subject}"></c:out></td>
                     <td><c:out value="${table3.suggestion}"></c:out></td>
                     <td><c:out value="${table3.status}"></c:out></td>   
                     <td><c:out value="${table3.reply}"></c:out></td>
                </tr>
         </c:forEach>          
             </tbody>
            </table>
                    </div>
                </div>
            </div>
                 </form>   
                </div>   
                <div>
                  <form name="f4">
         <select name="s2">
        <sql:query dataSource="${db}" var="rs4">
         select * from tbsuggestions;
        </sql:query> 
          <c:forEach var="table4" items="${rs4.rows}">
              <option><c:out value="${table4.suggestion_id}"></c:out></option>
         </c:forEach>  
         </select>           
            <br>
            <input type="submit" name="openform1" value="form to update status and reply"/>
            <%
               if(request.getParameter("openform1")!= null)
               {
                   String sname1 = request.getParameter("s2");
                   out.println(sname1);
                   
                   String q1 = "select * from tbsuggestions where suggestion_id = ?";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(q1);
                   pst1.setInt(1,Integer.parseInt(sname1));
                   ResultSet rs1;
                   rs1 = pst1.executeQuery();
                   if(rs1.next())
                   {
                       out.println("<input type='hidden' name='tt2' id='tt2' value='"+Integer.parseInt(sname1)+"' />");
                       out.println("<label>"+ rs1.getString("suggestion_id") +"</label>" );
                       out.println("<label>"+ rs1.getString("username") +"</label>" );
                       out.println("<label>"+ rs1.getString("subject") +"</label>" );
                       out.println("<label>"+ rs1.getString("suggestion") +"</label>" );
                       out.println("<label>"+ rs1.getString("status") +"</label>" );
                     
                       out.println("Accepted"+"<input type='radio' name='r2' value='Accepted'/>");
                       out.println("Rejected"+"<input type='radio' name='r2' value='Rejected'/>");
                       out.println("REPLY OR SOLUTION : "+"<textarea name='ta2' rows='5' cols='25'>"+rs1.getString("reply")+"</textarea>");
                       out.println("<input type='submit' value='update' name='bupdate1' />");
                       
                   }
               }
              
                if(request.getParameter("bupdate1")!=null)
               {
                   String sname1 = request.getParameter("tt2");
                   String rv1 = request.getParameter("r2");
                   out.println(rv1);
                   String rp1 = request.getParameter("ta2");
                   out.println(rp1);
                   String s1 = "update tbsuggestions set status=?,reply=? where suggestion_id=?";
                   myConnection obj2 = new myConnection();
                   PreparedStatement pst1 = obj2.db.prepareStatement(s1);
                   pst1.setString(1,rv1);
                   pst1.setString(2,rp1);
                   pst1.setInt(3,Integer.parseInt(sname1));
                   pst1.executeUpdate();
               }

            %>
         
              </form>
    </body>
</html>
