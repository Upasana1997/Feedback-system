<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : faculty_mainpage
    Created on : Apr 17, 2018, 11:19:48 PM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Mainpage</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Yesteryear' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/facultystyle.css">
  <script>
       function func()
        {
            var a = document.getElementById("options");
            var b = document.getElementById("options1");
            var c = document.getElementById("options2");
            a.style.display = "none";
            b.style.display = "none";
            c.style.display = "none";
        }
        
        function toggle()
        {
            var a = document.getElementById("options");
            a.style.display = "block";
            var b = document.getElementById("options1");
            var c = document.getElementById("options2");
            b.style.display = "none";
            c.style.display = "none";
        }
        
        function toggle1()
        {
            var a = document.getElementById("options1");
            a.style.display = "block";
             var b = document.getElementById("options");
            var c = document.getElementById("options2");
             b.style.display = "none";
            c.style.display = "none";
        }
        
         function toggle2()
        {
            var a = document.getElementById("options2");
            a.style.display = "block";
            var b = document.getElementById("options");
            var c = document.getElementById("options1");
            b.style.display = "none";
            c.style.display = "none";
        }
        
      </script>
    </head>
    <body onload="func()">
        <div>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <img src="logo.png">
          </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav  navbar-right">
            <li>
              <a href="#">Home</a>
            </li>
            <li>
              <a href="#">Events</a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <span class="glyphicon glyphicon-user"></span> Hi, faculty logged in
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">Change Password</a>
                </li>
                <li>
                  <a href="index.jsp">Logout</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <div class="container" id="main">
    <br>
    <!-- <div id="marquee">
      <marquee behavior="scroll" direction="left">Your scrolling text goes here</marquee>
    </div> -->
    <br>
    <div class="jumbotron" id="user">
      Welcome User
    </div>
    <br>
    <div id="home">
      Dashboard
    </div>
    <br>

    <div class="row">
      <div class="col-md-2">
        <a href="#" class="btn btn-sq-lg btn-primary" onclick="toggle2()">
          <br>
          <i class="fa fa-group fa-5x"></i>
          <br>
          <br> Student Details
        </a>
        <br>
        Check student details<br>
      </div>
      
      <div class="col-md-2" id="left">
        <a href="#" class="btn btn-sq-lg btn-info" onclick="toggle()">
          <br>
          <i class="fa fa-check-square-o fa-5x"></i>
          <br>
          <br> Check Feedback
        </a>
        Check the Feedback uploaded by the students
      </div>
      <div class="col-md-2" id="left">
        <a href="#" class="btn btn-sq-lg btn-warning" onclick="toggle1()">
          <br>
          <i class="fa fa-dropbox fa-5x"></i>
          <br>
          <br> Feedback Solutions
        </a>
        Check the solutions provided by the admin
      </div>
<!--      <div class="col-md-2" id="left">
        <a href="#" class="btn btn-sq-lg btn-danger">
          <br>
          <i class="fa fa-upload fa-5x"></i>
          <br> Upload Feedback
          <br>Solutions
        </a>
        Provide the solution to the students as specified by the admin
      </div>
    </div>-->

    <br>
    <br>
    
    <div id ="options">
            <a href="hostel2.jsp">Hostel</a><br>
            <a href="transport.jsp">Transport</a><br>
            <a href="infrastructure.jsp">Infrastructure</a><br>
            <a href="others.jsp">Others</a><br>
            </div>
            
    <div id="options2">  
        <form name="f1">
            <input type="submit" value="view students details" name="b2"/>
            <c:if test="${param.b2 != null}">
                <c:redirect url="stddetails.jsp"></c:redirect>
            </c:if>
        </form>   
    </div>           
            
             <div id ="options1">
            <a href="adminreplieshostel.jsp">Hostel</a><br>
            <a href="adminrepliestransport.jsp">Transport</a><br>
            <a href="adminrepliesinfra.jsp">Infrastructure</a><br>
            <a href="adminrepliesothers.jsp">Others</a><br>
            </div>
    
    <br>
    <br>

    <footer class="container-fluid text-center" id="footer">
      <div class="col-sm-12">
        <div class="row">
          <div id="text">
            Connect with us
            <span class="glyphicon glyphicon-share-alt "></span>
            <a target="_blank" href="https://www.facebook.com/ChitkaraU" class="fa fa-facebook" id="fa"></a>
            <a target="_blank" href="https://twitter.com/chitkarau" class="fa fa-twitter" id="fa"></a>
            <a target="_blank" href="https://plus.google.com/+chitkarauniversity/" class="fa fa-google" id="fa"></a>
            <a target="_blank" href="https://www.linkedin.com/edu/school?id=43021" class="fa fa-linkedin" id="fa"></a>
            <a target="_blank" href="https://youtube.com/chitkaraU" class="fa fa-youtube" id="fa"></a>
            <a target="_blank" href="https://www.instagram.com/chitkarau/" class="fa fa-instagram" id="fa"></a>
          </div>
        </div>
      </div>
    </footer>
  </div>


        
    </body>
</html>
