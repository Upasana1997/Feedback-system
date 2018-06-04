<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : connectadmin
    Created on : Apr 28, 2018, 9:50:17 PM
    Author     : Dell
--%>

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
        <form name="f2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
            <table border="2" width="400" height="100">
                <thead>
                    <tr>
                        <th>student id</th>
                        <th>mentor id</th>
                        <th>student name</th>
                        <th>issue category</th>
                        <th>issue</th>
                        <th>status till now</th>
                        <th>any reply/solution to the issue till now</th>    
                    </tr>
                </thead>
                <tbody>
                
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <jsp:getProperty name="obj2" property="username" />
        <c:set var="un" value="${obj2.getUsername()}"></c:set>
        <c:out value="${un}"></c:out>
        
        
        <sql:query dataSource="${db}" var="rs">
         select * from tbissuerecord;
        </sql:query>
             
         <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <td><c:out value="${table.sid}"></c:out></td>
                    <td><c:out value="${table.mid}"></c:out></td>
                     <td><c:out value="${table.sname}"></c:out></td> 
                     <td><c:out value="${table.p_category}"></c:out></td>
                     <td><c:out value="${table.problem}"></c:out></td>
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
            </div>
           <br>
           <br>
           
           <div>
               <form name="f3">
         <select name="s1">
        <sql:query dataSource="${db}" var="rs1">
         select * from tbissuerecord;
        </sql:query> 
          <c:forEach var="table1" items="${rs1.rows}">
              <option><c:out value="${table1.sid}"></c:out></option>
         </c:forEach>  
         </select>           
            <br>
            <input type="submit" name="openform" value="form to update status and reply"/>
            <%
               if(request.getParameter("openform")!= null)
               {
                   String sname = request.getParameter("s1");
                   out.println(sname);
                   
                   String q = "select * from tbissuerecord where sid = ?";
                   myConnection obj = new myConnection();
                   PreparedStatement pst = obj.db.prepareStatement(q);
                   pst.setInt(1,Integer.parseInt(sname));
                   ResultSet rs;
                   rs = pst.executeQuery();
                   if(rs.next())
                   {
                       out.println("<input type='hidden' name='tt1' id='tt1' value='"+Integer.parseInt(sname)+"' />");
                       out.println("<label>"+ rs.getString("sname") +"</label>" );
                       out.println("<label>"+ rs.getString("p_category") +"</label>" );
                       out.println("<label>"+ rs.getString("problem") +"</label>" );
                       out.println("<label>"+ rs.getString("status") +"</label>" );
                       out.println("pending"+"<input type='radio' name='r1' value='pending'/>");
                       out.println("put in waiting"+"<input type='radio' name='r1' value='put in waiting'/>");
                       out.println("Accepted"+"<input type='radio' name='r1' value='Accepted'/>");
                       out.println("Rejected"+"<input type='radio' name='r1' value='Rejected'/>");
                       out.println("REPLY OR SOLUTION : "+"<textarea name='ta1' rows='5' cols='25'>"+rs.getString("reply")+"</textarea>");
                       out.println("<input type='submit' value='update' name='bupdate' />");
                       
                   }
               }
              
                if(request.getParameter("bupdate")!=null)
               {
                   String sname = request.getParameter("tt1");
                   String rv = request.getParameter("r1");
                   out.println(rv);
                   String rp = request.getParameter("ta1");
                   out.println(rp);
                   String s = "update tbissuerecord set status=?,reply=? where sid=?";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setString(1,rv);
                   pst1.setString(2,rp);
                   pst1.setInt(3,Integer.parseInt(sname));
                   pst1.executeUpdate();
               }

            %>
         
              </form>
           
    </body>
</html>
