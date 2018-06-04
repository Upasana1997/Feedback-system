<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- 
    Document   : student_mainpage
    Created on : Mar 27, 2018, 2:41:56 PM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/studentstyle.css">
    <script src="js/studentmain.js"></script>
</head>

<body>
    <div class="row" id="header">
        <nav class="navbar navbar-default navbar-fixed-top">
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
                            <a href="#">
                                <span class="glyphicon glyphicon-home"></span> Home</a>
                        </li>
                        <li>
                            <a href="#">Events</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <span class="glyphicon glyphicon-user"></span> Hi, Student logged in
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

    <div class=" row" id="main">
        <div class="container-fluid">
            <br>
            <!-- <div id="marquee">
      <marquee behavior="scroll" direction="left">Your scrolling text goes here</marquee>
    </div> -->
            <br>
            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/practice"
                                   user="root"   password=""></sql:setDataSource>
        
            <div class="jumbotron" id="user">
                Student details: <br>
                 <sql:query dataSource="${db}" var="rs">
                select * from tbstddetails where username="${get_username}";
                </sql:query>
                
                <c:forEach var="table" items="${rs.rows}">
                    Student ID: <c:out value="${table.s_id}"></c:out>  <br>
                    Name: <c:out value="${table.sname}"></c:out> <br>
                    Contact: <c:out value="${table.contact}"></c:out> <br>
               Email ID: <c:out value="${table.email}"></c:out>
                </c:forEach>
                
            </div>
            <br>
            <div id="home">
                <b> Dashboard</b>
            </div>
            <br>
            <div class="row" id="div1">
                <div class="col-md-2">
                    <a href="#" onclick="show()" class="btn btn-sq-lg btn-primary">
                        <br>
                        <i class="fa fa-external-link-square fa-5x"></i>
                        <br>
                        <br> PROBLEMS
                    </a>
                    <br> Tell us your problems
                </div>
                <div class="col-md-2" id="left">
                    <a href="#" onclick="show_addsugg()"class="btn btn-sq-lg btn-success">
                        <br>
                        <i class="fa fa-comments-o fa-5x"></i>
                        <br>
                        <br> SUGGESTIONS
                    </a>
                    <br> Make Your Suggestions
                    <br> A Reality
                </div>
                <div class="col-md-2" id="left">
                    <a href="#" onclick="check_issuestatus()" class="btn btn-sq-lg btn-info">
                        <br>
                        <i class="fa fa-check-square-o fa-5x"></i>
                        <br> PROBLEM
                        <br> RESPONSE
                    </a>
                    Check Response of your Problem
                </div>
                <div class="col-md-2" id="left">
                    <a href="#" onclick="check_suggstatus()" class="btn btn-sq-lg btn-warning">
                        <br>
                        <i class="fa fa-dropbox fa-5x"></i>
                        <br> SUGGESTION
                        <br> RESPONSE
                    </a>
                    Check Response of your Suggestions
                </div>
            </div>
        </div>
        <hr>
        <div class="container row" id="category">
            <form class="form-inline">
<!--                <div class="form-group">
                    <button type="button" onclick="show_hostel()" class="btn btn-primary btn-lg">Hostel</button>
                </div>&nbsp;&nbsp;
                <div class="form-group">
                    <button type="button" onclick="show_transportation()" class="btn btn-primary btn-lg">Transportation</button>
                </div>&nbsp;&nbsp;
                <div class="form-group">
                    <button type="button" onclick="show_infrastructure()" class="btn btn-primary btn-lg">Infrastructure</button>
                </div>&nbsp;&nbsp;
                <div class="form-group">
                    <button type="button" onclick="show_others()" class="btn btn-primary btn-lg">Others</button>
                </div>&nbsp;&nbsp;-->
                
                <br><br><br>
                
                <input type="submit" value="Hostel" name="bH">
<input type="submit" value="Transport" name="bT">
<input type="submit" value="Infrastructure" name="bI">
<input type="submit" value="Others" name="bO">

<c:if test="${param.bH!=null}">
     <c:set var="get_category" value="Hostel" scope="session"> </c:set>
    <c:redirect url="issueform1.jsp"></c:redirect>   
</c:if>   


<c:if test="${param.bT!=null}">
     <c:set var="get_category" value="Transport" scope="session"> </c:set>
    <c:redirect url="issueform1.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.bI!=null}">
     <c:set var="get_category" value="Infrastructure" scope="session"> </c:set>
    <c:redirect url="issueform1.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.bO!=null}">
     <c:set var="get_category" value="Others" scope="session"> </c:set>
    <c:redirect url="issueform1.jsp"></c:redirect>   
</c:if>  

                
                
            </form>
        </div>
        <div class="container row" id="suggform">
            <form class="form-inline">
                <div class="form-group">
                   <input type="submit" value="Enter Suggestion" name="b3" id="suggestion">
                   <c:if test="${param.b3!=null}">
     <c:redirect url="addsuggestion.jsp"></c:redirect>   
               </c:if>  
                </div>&nbsp;&nbsp;
            </form>
        </div>
        
        <div class="container row" id="issuestatus">
            <form class="form-inline">
                <div class="form-group">
              <input type="submit" value="See issue status" name="b2">
              <c:if test="${param.b2!=null}">
    <c:redirect url="checkissuestatus.jsp"></c:redirect>   
</c:if>  

                </div>&nbsp;&nbsp;
            </form>
        </div>
        
        <div class="container row" id="suggstatus">
            <form class="form-inline">
                <div class="form-group">
                    <input type="submit" value="see suggestion status" name="b4">
                    <c:if test="${param.b4!=null}">
     <c:redirect url="checksuggstatus.jsp"></c:redirect>   
</c:if>  
                </div>&nbsp;&nbsp;
            </form>
        </div>
        
        
        <div class="row" id="footer">
            <footer class="container-fluid text-center">
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