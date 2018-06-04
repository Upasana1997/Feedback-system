<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%-- 
    Document   : loginformteacher
    Created on : May 18, 2018, 9:28:46 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Login Form</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/loginform.css">
<script src="js/loginform.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="inputEmail" class="form-control" placeholder="Username"  name="t1" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="t2" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me" onclick="showpwd()"> Show Password
                    </label>
                </div>
                <input type="submit" name="b2" class="btn btn-lg btn-primary btn-block btn-signin" value="Sign In"/>
            </form><!-- /form -->
            <%
                 String u,p;
                    u=request.getParameter("t1");
                    p=request.getParameter("t2");
                
             session.setAttribute("user",u);
             session.setAttribute("pass",p);
             
             try
             {
                 String q = "select * from tbfaculty where username=?";
                 myConnection obj = new myConnection();
                 PreparedStatement pst = obj.db.prepareStatement(q);
                 pst.setString(1,u);
                 ResultSet rs;
                 rs=pst.executeQuery();
                 if(rs.next())
                 {
                     session.setAttribute("mentor",rs.getInt("id"));
                 }
             }
             catch(Exception e)
             {
                 out.println(e.getMessage());
             }
             
            %>
        
            <jsp:useBean id="obj1" scope="session" class="classes.mentors" />
        <jsp:setProperty name="obj1" property="username" param="t1"/>
                         
        
            
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/practice"
                                   user="root"   password=""></sql:setDataSource>
        
        <c:if test="${param.b2!=null}">
            <sql:query dataSource="${db}" var="rs">
                select * from tblogin where category="faculty";
                
            </sql:query>
        
            
            <c:forEach var="table" items="${rs.rows}">
                <c:if test="${(param.t1==table.username) && (param.t2==table.password)}">
                    <c:redirect url="facultymain.jsp"></c:redirect>
                </c:if>
            </c:forEach>
          </c:if>  
                 <c:if test="${(param.t1!=table.username) && (param.t2!=table.password)}">
                    <script>
//                        alert("wrong match");
swal({
  title: "Sorry!",
  text: "Incorrect Username or password!",
  icon: "warning"
});
                        </script>
                </c:if>
            
        </div><!-- /card-container -->
    </div><!-- /container -->
    </body>
    </body>
</html>
