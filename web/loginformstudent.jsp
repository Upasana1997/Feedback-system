<%@page import="javax.swing.JOptionPane"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : loginform
    Created on : May 18, 2018, 7:59:15 AM
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
                <input type="text" id="inputEmail" class="form-control" placeholder="Username"  name="user" required autofocus>
                <input type="password" id="inputPassword"  class="form-control" placeholder="Password" name="pass" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox"  onclick="showpwd()"> Show Password
                    </label>
                </div>
                <input type="submit" name="b1" class="btn btn-lg btn-primary btn-block btn-signin" value="Sign In"/>
            </form><!-- /form -->
            <c:set var="get_username" value="${param.user}" scope="session"> </c:set>
            
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/practice"
                                   user="root"   password=""></sql:setDataSource>
        
        <c:if test="${param.b1!=null}">
            <sql:query dataSource="${db}" var="rs">
                select * from tblogin where category="student";
                
            </sql:query>
        
            
            <c:forEach var="table" items="${rs.rows}">
                <c:if test="${(param.user==table.username) && (param.pass==table.password)}">
                    <c:redirect url="studentmain.jsp"></c:redirect>
                </c:if>
                <c:if test="${(param.user!=table.username) && (param.pass!=table.password)}">
                    <script>
//                        alert("wrong match");
swal({
  title: "Sorry!",
  text: "Incorrect Username or password!",
  icon: "warning"
});
                        </script>
                </c:if>
                
                
            </c:forEach>
          </c:if>  
            
        </div><!-- /card-container -->
    </div><!-- /container -->
    </body>
</html>
