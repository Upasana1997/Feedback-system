<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : index
    Created on : May 2, 2018, 1:55:07 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script  src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
 
  <script src="js/main.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
    <body>
         <div>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false"> -->
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <img id="image" src="logo_chitkaara_horizontal.png">
          </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav  navbar-right">
            <li>
                <a data-target="#studentmodal" data-toggle="modal" href="#studentmodal">Student Login</a>
            </li>
            <li>
              <a data-target="#teachermodal" data-toggle="modal" href="#teachermodal">Teacher Login</a>
            </li>
            <li>
                <a data-target="#adminmodal" data-toggle="modal" href="#adminmodal">Admin Login</a>
              </li>
           
          </ul>
        </div>
      </div>
    </nav>
  </div> 
        <br>
        <br>
        <br>
        <br>
        
<div class="slideshow-container">

<div class="mySlides">
 
  <img src="1.jpg" style="width:100%">
 
</div>

<div class="mySlides">
  
  <img src="2.jpg" style="width:100%">
  
</div>

<div class="mySlides ">
  
  <img src="4.jpg" style="width:100%">
  
</div>

<div class="mySlides ">
  
  <img src="5.jpg" style="width:100%">
  
</div>

<div class="mySlides ">
  
  <img src="6.jpg" style="width:100%">
  
</div>

</div>
<br>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    //var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < slides.length; i++) {
        slides[i].className = slides[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    slides[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
        <div class="modal fade" id="teachermodal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="modal-title">
                            <h2><span class="glyphicon glyphicon-log-in"></span>      Login As Teacher</h2>    
                        </div>
                        
                    </div>
                    
                    <form target="_self" name="f2"> 
                    <div class="modal-body">
                           
                         <div class="form-group">
                                <label for="email"><span class="glyphicon glyphicon-user"></span>Username:</label>
                                <input type="text" class="form-control" name="t1" id="teacherusername" required>
                               </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" name="t2" id="teacherpassword" data-toggle="teacherpassword" required
                                       <div class="input"><a onclick="showTeacherPassword()"><span class="glyphicon glyphicon-eye-open"></span></a></div>
                        
                            </div>
                            <div class="modal-footer">
                            <input type="submit" name = "b2" value="Login">
                            <!--<button type="submit" class="btn btn-success" onclick="">Submit</button>  -->
                            <button type="reset" class="btn btn-success">Reset</button>
                            </div>
                            </form>
                        
                    
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
                         
                    
                    
                </div>
                
            </div>
        </div>
        <script type="text/javascript">
//	this.$("#teacherpassword").password.toggle();
</script>
        </div>
        <div class="modal fade left" id="studentmodal" role="dialog">
            <div class="modal-dialog modal-side modal-top-right">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="modal-title">
                            <h2><span class="glyphicon glyphicon-log-in"></span>       Login As Student</h2>    
                        </div>
                        
                    </div>
                    <form target="_self" name="f1">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="rollno"><span class="glyphicon glyphicon-user"></span>Username</label>
                            <input type="text" class="form-control" name="user" id="studentrollno" required>
                        </div>
       
                            <div class="form-group">
                                <label for="password"><span class="glyphicon glyphicon-eye-close"></span>Password:</label>
                                <input type="password" class="form-control" name="pass" id="studentpassword" required>
                            <input type="checkbox" onclick="showStudentPassword()">Show Password
                            </div>
                          </div>
                    
                    <div class="modal-footer">
                        <input type="submit" name = "b1" value="Login">
                        <button type="reset" class="btn btn-success">Reset</button>
                    </div>
                        </form>
                    
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
<!--                     <script src="https://unpkg.com/sweetalert2@7.8.2/dist/sweetalert2.all.js"></script>
                        <script>swal({
                        text:"User does not exist"
                          });
                        </script>-->
                </c:if>
                
                
            </c:forEach>
          </c:if>  
                    
                </div>
                
            </div>
        </div> 

      
         
        
        <div class="modal fade" id="adminmodal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="modal-title">
                        <h2><span class="glyphicon glyphicon-log-in"></span>       Admin Login</h2>    
                        </div>
                        
                    </div>
                    <form name="f3">
                    <div class="modal-body">
                        <div class="form-group">
                        <label for="emailid"><span class="glyphicon glyphicon-user"></span>Username:</label>
                        <input type="text" class="form-control" name="t3" id="adminemail" required>
                    </div>
                        <div class="form-group">
                            <label for="password"><span class="glyphicon glyphicon-eye-close"></span>Password:</label>
                            <input type="password" class="form-control" name="t4" id="adminpassword" required>
                        </div>
                    </div>
                        <div class="modal-footer">
                              <input type="submit" name = "b3" value="Login">
                        <button type="reset" class="btn btn-success">Reset</button>                         
                        </div>
                    </form>
                    
                    <%
                 String un,ps;
                 un=request.getParameter("t3");
                 ps=request.getParameter("t4");
                
             session.setAttribute("usern",un);
             session.setAttribute("passs",ps);
             
            %>
        
        <jsp:useBean id="obj2" scope="session" class="classes.mentors" />
        <jsp:setProperty name="obj2" property="username" param="t3"/>
        
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/practice"
                                   user="root"   password=""></sql:setDataSource>
        
        <c:if test="${param.b3!=null}">
            <sql:query dataSource="${db}" var="rs">
                select * from tblogin where category="Admin";
                
            </sql:query>
        
            
            <c:forEach var="table" items="${rs.rows}">
                <c:if test="${(param.t3==table.username) && (param.t4==table.password)}">
                    <c:redirect url="adminmain.jsp"></c:redirect>
                </c:if>
            </c:forEach>
          </c:if>  
                    
                    
                </div>
            </div>
            
        </div>
        
        
    </body>
</html>
