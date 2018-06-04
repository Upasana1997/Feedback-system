<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- 
    Document   : facultymain
    Created on : May 17, 2018, 1:34:44 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      padding: 10px;
    }
    
    /* Add a gray background color and some padding to the footer */
    /* footer {
      background-color: #f2f2f2;
      padding: 25px;
    } */
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
  .well{
    background-color: black;
    color:white;
}
.fa{
    color:  lightgray;
    margin-right:15px;
}
#text{
  float:right;
  text-align:center; 
}
.fa:hover {
    opacity: 0.7;
}
.footer
{
	width: 100%;
	padding-top: 86px;
	background: #1a1a1a;
}
.footer .section_title h1
{
	color: #FFFFFF;
}

.footer_column_title
{
	font-size: 18px;
	font-weight: 500;
	color: #FFFFFF;
	padding-top: 15px;
  margin-left: 450px;
}
.footer_column_content
{
	margin-top: 32px;
  margin-left: 350px;

}

.footer_list_item
{
	margin-bottom: 11px;
}
.footer_list_item a
{
	font-size: 14px;
	color: #a5a5a5;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.footer_contact_item
{
	font-size: 14px;
	font-weight: 400;
	color: #a5a5a5;
	margin-bottom: 22px;
}
.footer_contact_item:last-child
{
	margin-bottom: 0px;
}
.footer_contact_icon
{
	display: inline-block;
	width: 24px;
	height: 24px;
	vertical-align: middle;
	margin-right: 10px;
}
.footer_contact_icon img
{
	width: 100%;
} 
.footer_about_text{
  color: lightgray;
}
  
  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="row">
    <div class="navbar-header col-md-8">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img src="logo_1.png" style="width:15%;height:auto;margin-left:7px;" alt=""></a>
    </div>
    <div class="collapse navbar-collapse col-md-4" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
<!--        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>-->
<jsp:getProperty name="obj1" property="username" />
        <c:set var="un" value="${obj1.getUsername()}"></c:set>
        
        <li><a href="#">Signed as ${un} </a></li>
        <li><a href="index1.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="bcg1.jpg"  alt="Image">
        <div class="carousel-caption">
          <h3>Welcome User!</h3>
        </div>      
      </div>

      <div class="item">
        <img src="bcg7.jpg" alt="Image" style="height:20%">
        <div class="carousel-caption">
          <h3>Our key stakeholders namely Students, Parents, Faculty, Alumni, Industry and Society as a whole, working in synergy towards a common goal which is the “Everlasting Success of Each Chitkara Student and creating them as responsible citizens”. </h3>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>Dashboard</h3><br>
  <div class="row">
    <div class="col-sm-4">
        <div class="thumbnail">
<!--            <a href="#" target="_blank">-->
              <img src="details1.png" alt="" style="width:45%;height:auto;">
              <div class="caption">
                <h3>Student Details</h3>
                <p>Check the student details under your mentorship.</p>
                 <form name="f1">
                <input type="submit" class="btn btn-primary" value="Student Details" name="b2"/>
                 <c:if test="${param.b2 != null}">
                <c:redirect url="stddetails.jsp"></c:redirect>
            </c:if>
                 </form>
           </div>
            
          </div>
          <br>
          <div class="thumbnail">
<!--                <a href="#" target="_blank">-->
                  <img src="check_feedback.png" alt="" style="width:50%;height:auto;">
                  <div class="caption">
                    <h3>Check Feedback</h3>
                    <p>Check the feedback uploaded by students under your mentorship.</p>
                    <form name="f1">   
                        <input type="submit" class="btn btn-primary" value="Hostel" name="in1" style="margin-bottom:10px;" />
                    <input type="submit" class="btn btn-primary" value="Transportation" name="in2" style="margin-bottom:10px;"/>
                    <input type="submit" class="btn btn-primary" value="Infrastructure" name="in3" style="margin-bottom:10px;"/>
                    <input type="submit" class="btn btn-primary" value="Others" name="in4" style="margin-bottom:10px;"/>
                    
                    <c:if test="${param.in1 != null}">
                <c:redirect url="hostel2.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in2 != null}">
                <c:redirect url="transport1.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in3 != null}">
                <c:redirect url="infrastructure1.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in4 != null}">
                <c:redirect url="others1.jsp"></c:redirect>
            </c:if>
                    
                    </form>
                  </div>
               
              </div>   
             </div>
    <div class="col-sm-4"> 
        <div class="thumbnail">
<!--            <a href="#" target="_blank">-->
              <img src="check_soln.png" alt="" style="width:45%;height:auto;">
              <div class="caption">
                <h3>Feedback Solutions</h3>
                <p>Check the solutions provided by the admin to the feedback uploaded by the student 
                        and send the status to the respective student.</p>
                <form name="f1">
                    <input type="submit" class="btn btn-primary" value="Hostel" name="in5" style="margin-bottom:10px;" />
                    <input type="submit" class="btn btn-primary" value="Transportation" name="in6" style="margin-bottom:10px;"/>
                    <input type="submit" class="btn btn-primary" value="Infrastructure" name="in7" style="margin-bottom:10px;"/>
                    <input type="submit" class="btn btn-primary" value="Others" name="in8" style="margin-bottom:10px;"/>
                    
                    <c:if test="${param.in5 != null}">
                <c:redirect url="adminreplieshostel1.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in6 != null}">
                <c:redirect url="adminrepliestransport1.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in7 != null}">
                <c:redirect url="adminrepliesinfra1.jsp"></c:redirect>
            </c:if>
                    
                    <c:if test="${param.in8 != null}">
                <c:redirect url="adminrepliesothers1.jsp"></c:redirect>
            </c:if>
                </form>
              </div>
           
          </div>
          <hr>
          <h2>Day by day Our University is becoming successful and your feedbacks and solutions will help us become more better!</h2>  
    </div>
    <div class="col-sm-4">
      <div class="well">
        <img src="symbol.png" style="margin-top:35px;margin-bottom:35px;">
       <p>Our logo depicts the arrows in soaring heights, promising everlasting progress.The colour Red denotes Energy & Passion to “Explore Our Potential”.</p>
      </div>
    </div>
    <div class="col-sm-4">
        <div class="well">
          <img src="fill.png" style="margin-top:25px;margin-bottom:35px;">
        </div>
      </div>
 
  </div>

</div><br>

<footer class="footer">
    <div class="container">

      <!-- Footer Content -->

      <div class="footer_content">
        <div class="row">

          <!-- Footer Column - About -->
          <div class="col-lg-3 footer_col">

            <!-- Logo -->
            <div class="logo_container">
              <div class="logo">
                <img src="images/CU_logo.png" alt="" style="width:50%;height:50%">
              </div>
            </div>
            <div>
              <br>
              <h3 class="footer_about_text">Our Vision</h3>
              <p class="footer_about_text">To be a globally recognized organization promoting academic excellence through interdisciplinary applied research
                and to expand realms of knowledge through innovation.</p>
            </div>
          </div>

          <!-- Footer Column - Contact -->

          <div class="col-md-8 footer_col">
            <div class="footer_column_title">Contact</div>
            <div class="footer_column_content">
                <ul style="list-style-type:none;">
                <li class="footer_contact_item">
                  <div class="footer_contact_icon">
                                        <i class="fa fa-map-marker"></i>

                  </div>

CHITKARA UNIVERSITY (PUNJAB) Chandigarh-Patiala National Highway Punjab 140 401
                </li>
                <li class="footer_contact_item">
                  <div class="footer_contact_icon">
                  <i class="fa fa-map-marker"></i>
                  </div>
                  CHANDIGARH INFORMATION CENTRE SCO 160-161, Sector 9-C Chandigarh 160 009
                </li>
                <li class="footer_contact_item">
                  <div class="footer_contact_icon">
                                      <i class="fa fa-phone"></i>

                  </div>
                  Tel:- +91.1762.507084-86, Mandeep Berwal – 9501105718
                </li>
                <li class="footer_contact_item">
                  <div class="footer_contact_icon">
                                        <i class="fa fa-envelope"></i>

                  </div>admissions@chitkara.edu.in
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12">
            <div class="row">
              <br><hr>
              <div id="text">
                <a target="_blank" href="https://www.facebook.com/ChitkaraU" class="fa fa-facebook fa-2x" id="fa"></a>
                <a target="_blank" href="https://twitter.com/chitkarau" class="fa fa-twitter fa-2x" id="fa"></a>
                <a target="_blank" href="https://plus.google.com/+chitkarauniversity/" class="fa fa-google fa-2x" id="fa"></a>
                <a target="_blank" href="https://www.linkedin.com/edu/school?id=43021" class="fa fa-linkedin fa-2x" id="fa"></a>
                <a target="_blank" href="https://youtube.com/chitkaraU" class="fa fa-youtube fa-2x" id="fa"></a>
                <a target="_blank" href="https://www.instagram.com/chitkarau/" class="fa fa-instagram fa-2x" id="fa"></a>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>
  </footer>

</body>
</html>
