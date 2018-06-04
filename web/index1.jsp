<%-- 
    Document   : index1
    Created on : May 17, 2018, 10:08:12 PM
    Author     : Dell
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Feedback System</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Course Project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="styles/responsive.css">
	
	<script src="js/main.js"></script>


</head>

<body>

	<div class="super_container">

		<!-- Header -->

		<header class="header d-flex flex-row">
			<div class="header_content d-flex flex-row align-items-center">
				<!-- Logo -->
				<div class="logo_container">
					<div class="logo">
						<img src="images/chitkara-logo.png" alt="" style="width:50%;height:50%">

					</div>
				</div>

				<!-- Main Navigation -->
				<nav class="main_nav_container">
					<div class="main_nav">
						<ul class="main_nav_list">
							<li class="main_nav_item">
								<a href="#">Home</a>
							</li>
							<li class="main_nav_item">
								<a href="#mid" data-target="#mid">About us</a>
							</li>
							<li class="main_nav_item">
								<a  href="loginformstudent.jsp">Student Login</a>
							</li>
							<li class="main_nav_item">
								<a  href="loginformteacher.jsp">Teacher Login</a>
							</li>
							<li class="main_nav_item">
								<a  href="loginformadmin.jsp">Admin Login</a>
							</li>
							<li class="main_nav_item">
								<a href="#foot" data-target="#foot">Contact</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="header_side d-flex flex-row justify-content-center align-items-center">
				<img src="images/phone-call.svg" alt="">
				<span>+095011 05714</span>
			</div>

			<!-- Hamburger -->
			<div class="hamburger_container">
				<i class="fas fa-bars trans_200"></i>
			</div>

		</header>

		<!-- Menu -->
		<div class="menu_container menu_mm">

			<!-- Menu Close Button -->
			<div class="menu_close_container">
				<div class="menu_close"></div>
			</div>

			<!-- Menu Items -->
			<div class="menu_inner menu_mm">
				<div class="menu menu_mm">
					<ul class="menu_list menu_mm">
						<li class="menu_item menu_mm">
							<a href="#">Home</a>
						</li>
						<li class="menu_item menu_mm">
							<a href="#">About us</a>
						</li>
						<li class="menu_item menu_mm">
							<a href="#">Student Login</a>
						</li>
						<li class="menu_item menu_mm">
							<a href="#">Admin Login</a>
						</li>
						<li class="menu_item menu_mm">
							<a href="#">Teacher Login</a>
						</li>
						<li class="menu_item menu_mm">
							<a href="#">Contact</a>
						</li>
					</ul>

					<!-- Menu Social -->

					<div class="menu_social_container menu_mm">
						<ul class="menu_social menu_mm">
							<li class="menu_social_item menu_mm">
								<a href="https://youtube.com/chitkaraU">
									<i class="fab fa-youtube"></i>
								</a>
							</li>
							<li class="menu_social_item menu_mm">
								<a href="https://www.linkedin.com/edu/school?id=43021">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</li>
							<li class="menu_social_item menu_mm">
								<a href="https://www.instagram.com/chitkarau/">
									<i class="fab fa-instagram"></i>
								</a>
							</li>
							<li class="menu_social_item menu_mm">
								<a href="https://www.facebook.com/ChitkaraU">
									<i class="fab fa-facebook-f"></i>
								</a>
							</li>
							<li class="menu_social_item menu_mm">
								<a href="https://twitter.com/chitkarau">
									<i class="fab fa-twitter"></i>
								</a>
							</li>
						</ul>
					</div>

				</div>

			</div>

		</div>

		<!-- Home -->

		<div class="home">

			<!-- Hero Slider -->
			<div class="hero_slider_container">
				<div class="hero_slider owl-carousel">

					<!-- Hero Slide -->
					<div class="hero_slide">
						<div class="hero_slide_background" style="background-image:url(images/bcg3.jpg)"></div>
						<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
							<div class="hero_slide_content text-center">
								<h1 data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut">Your Feedback matters for us!</h1>

							</div>
						</div>
					</div>

					<!-- Hero Slide -->
					<div class="hero_slide">
						<div class="hero_slide_background" style="background-image:url(images/bcg2.jpg)"></div>
						<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
							<div class="hero_slide_content text-center">
								<h1 data-animation-in="fadeInUp" data-animation-out="animate-out fadeOut">Your Feedback matters for us!</h1>
							</div>
						</div>
					</div>

					<!-- Hero Slide -->
					<div class="hero_slide">
						<div class="hero_slide_background" style="background-image:url(images/bcg5.jpg)"></div>
						<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
							<div class="hero_slide_content text-center">
							</div>
						</div>
					</div>

				</div>

				<div class="hero_slider_left hero_slider_nav trans_200">
					<span class="trans_200">prev</span>
				</div>
				<div class="hero_slider_right hero_slider_nav trans_200">
					<span class="trans_200">next</span>
				</div>
			</div>

		</div>

		<div class="hero_boxes">
			<div class="hero_boxes_inner">
				<div class="container">
					<div class="row">

						<div class="col-lg-4 hero_box_col">
							<div class="hero_box d-flex flex-row align-items-center justify-content-start">
								<img src="images/earth-globe.svg" class="svg" alt="">
								<div class="hero_box_content">
									<h2 class="hero_box_title">Got Feedback!</h2>
								</div>
							</div>
						</div>

						<div class="col-lg-4 hero_box_col">
							<div class="hero_box d-flex flex-row align-items-center justify-content-start">
								<img src="images/books.svg" class="svg" alt="">
								<div class="hero_box_content">
									<h2 class="hero_box_title">We would love to here about them.</h2>
								</div>
							</div>
						</div>

						<div class="col-lg-4 hero_box_col">
							<div class="hero_box d-flex flex-row align-items-center justify-content-start">
								<img src="images/professor.svg" class="svg" alt="">
								<div class="hero_box_content">
									<h2 class="hero_box_title">And provide you the best possible solution</h2>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Popular -->

		<div class="popular page_section" >
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>Our Mission</h1>
						</div>
					</div>
				</div>

				<div class="row course_boxes">

					<!-- Popular Course Item -->
					<div class="col-lg-4 course_box">
						<div class="card">
							<img class="card-img-top" src="images/course_1.jpg" alt="">
							<div class="card-body text-center">
								<div class="card-title">
									<h3>To inculcate high moral, ethical and professional standards amongst our students
									</h3>
								</div>
							</div>
						</div>
					</div>

					<!-- Popular Course Item -->
					<div class="col-lg-4 course_box">
						<div class="card">
							<img class="card-img-top" src="images/course_2.jpg" alt="">
							<div class="card-body text-center">
								<div class="card-title">
									<h3>To carry out the academic process for achieving excellence through active teacher-student-industry participation
									</h3>
								</div>
							</div>
						</div>
					</div>

					<!-- Popular Course Item -->
					<div class="col-lg-4 course_box">
						<div class="card">
							<img class="card-img-top" src="images/course_3.jpg" alt="">
							<div class="card-body text-center">
								<div class="card-title">
									<h3>To contribute to build a skillful society</h3>
									<br>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Services -->

		<div class="services page_section" id="mid">

			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>Our Overview</h1>
						</div>
					</div>
				</div>
				<div class="row services_row">
					<div class="col-lg-12 service_item text-left d-flex flex-column align-items-start justify-content-start">
						<div class="icon_container d-flex flex-column justify-content-end">
						</div>
						<p>In the year 2002, Chitkara Educational Trust established its Punjab campus 30 kilometers from Chandigarh, on the Chandigarh–Patiala
							National Highway. In the year 2010 Chitkara University was established by the Punjab State Legislature under “The
							Chitkara University Act”. Chitkara University, the best university in Punjab is a government-recognized university
							with the right to confer degrees as per the Sections 2(f) and 22(1) of the UGC Act, 1956. The sprawling campus of
							the University is equidistant from Chandigarh, Mohali, Panchkula, Ambala and Patiala. The University offers multi-disciplinary
							programs, all of which are designed to be industry-relevant. As a result of this student-centric approach, Chitkara
							University is renowned as one of the best private universities in the North India region. From business management
							programs to programs in nursing and medical laboratory technologies; and from computer science, electronics and mechanical
							engineering programs, to hotel management and architecture—Chitkara University, Punjab is a veritable cornucopia of
							educational services. Curriculum is delivered in spacious, amphitheatre-style classrooms—fitted with modern information
							and communication technology (ICT) equipment—and in well-equipped, modern laboratories. Additionally, students are
							encouraged—and provided relevant facilities—to participate in co-curricular and extra-curricular activities through
							various clubs and societies on the campus. It is because of the cumulative effect of an elaborate in-campus academic
							infrastructure; strong national and international collaborations; and a robust on-campus recruitment record—including
							regular recruitment by reputed blue-chip companies—that the University finds favor with national as well as international
							students. A healthy number of foreign students regularly study at the campus and number of them also visit on exchange
							programs, adding to the cultural diversity found on campus. The University in Punjab provides several opportunities
							for local students, too, to visit foreign universities and institutions on such exchange programs, thereby helping
							them receive invaluable international exposure. The University has at the centre of its philosophical core the commitment
							to excellence in education. It is the strong academic heritage of the University, and such firmness on matters of
							principles that has seen it grow from strength to strength in such a short span of time.</p>
					</div>

				</div>
			</div>
		</div>

		<!-- Testimonials -->

		<div class="testimonials page_section">
			<!-- <div class="testimonials_background" style="background-image:url(images/testimonials_background.jpg)"></div> -->
			<div class="testimonials_background_container prlx_parent">
				<div class="testimonials_background prlx" style="background-image:url(images/review.jpg)"></div>
			</div>
			<div class="container">

				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>What our students say</h1>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-10 offset-lg-1">

						<div class="testimonials_slider_container">

							<!-- Testimonials Slider -->
							<div class="owl-carousel owl-theme testimonials_slider">

								<!-- Testimonials Item -->
								<div class="owl-item">
									<div class="testimonials_item text-center">
										<div class="quote">“</div>
										<p class="testimonials_text"> According to me, it is the best college. Many companies came to our campus and gave a chance to the students. The
											college provides 100% placement guarantee. The college provides the best opportunities to students. I have been
											studying for four years, so I feel fortunate because I am in the best university. Here, we only explore our potential.</p>
										<div class="testimonial_user">
											<div class="testimonial_name">Biny</div>
											<div class="testimonial_title">Batch 2021</div>
										</div>
									</div>
								</div>

								<!-- Testimonials Item -->
								<div class="owl-item">
									<div class="testimonials_item text-center">
										<div class="quote">“</div>
										<p class="testimonials_text">Chitkara University is the university with awesome infrastructure and academic facilities to students with a well
											renowned faculty and administration with strict Anti-Ragging Policies, organizes various events Like Techelone
											and Algorythm for students with a Star-Night with Gippy Grewal, Badshah and Many More.Awesome Alumini Network
											known as CAN(Chitkara Alumini Network) recently Was organized in Chandigarh I was there and arrangement was awesome
											at MTV Flyp café at chandigarh</p>
										<div class="testimonial_user">
											<div class="testimonial_name">Navdeep Singh</div>
											<div class="testimonial_title">Batch 2017</div>
										</div>
									</div>
								</div>
								<!-- Testimonials Item -->
								<div class="owl-item">
									<div class="testimonials_item text-center">
										<div class="quote">“</div>
										<p class="testimonials_text">The institution is well-built with beautiful blocks and lecture halls all over the campus. The cafeteria is one
											of the best things I've ever seen. Many food chains like La Pinoz Pizza are already a part of the campus and more
											to join soon. The environment is very refreshing, and almost all sports facilities are available.</p>
										<div class="testimonial_user">
											<div class="testimonial_name">Pulkit</div>
											<div class="testimonial_title">Batch 2019</div>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>

			</div>
		</div>


		<!-- Footer -->

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
								<h3>Our Vision</h3>
								<p class="footer_about_text">To be a globally recognized organization promoting academic excellence through interdisciplinary applied research
									and to expand realms of knowledge through innovation.</p>
							</div>
						</div>

						<!-- Footer Column - Menu -->

						<div class="col-lg-3 footer_col">
							<div class="footer_column_title">Menu</div>
							<div class="footer_column_content">
								<ul>
									<li class="footer_list_item">
										<a href="#">Home</a>
									</li>
									<li class="footer_list_item">
										<a href="#">About Us</a>
									</li>
									<li class="footer_list_item">
										<a href="#">Student Login</a>
									</li>
									<li class="footer_list_item">
										<a href="#">Teacger Login</a>
									</li>
									<li class="footer_list_item">
										<a href="#">Admin Login</a>
									</li>
								</ul>
							</div>
						</div>

						<!-- Footer Column - Contact -->

						<div class="col-lg-3 footer_col">
							<div class="footer_column_title">Contact</div>
							<div class="footer_column_content">
								<ul>
									<li class="footer_contact_item">
										<div class="footer_contact_icon">
											<img src="images/placeholder.svg" alt="">
										</div>
										CHITKARA UNIVERSITY (PUNJAB) Chandigarh-Patiala National Highway Punjab 140 401
									</li>
									<li class="footer_contact_item">
										<div class="footer_contact_icon">
											<img src="images/placeholder.svg" alt="">
										</div>
										CHANDIGARH INFORMATION CENTRE SCO 160-161, Sector 9-C Chandigarh 160 009
									</li>
									<li class="footer_contact_item">
										<div class="footer_contact_icon">
											<img src="images/smartphone.svg" alt="">
										</div>
										Tel:- +91.1762.507084-86, Mandeep Berwal – 9501105718
									</li>
									<li class="footer_contact_item">
										<div class="footer_contact_icon">
											<img src="images/envelope.svg" alt="">
										</div>admissions@chitkara.edu.in
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div>

				<!-- Footer Copyright -->

				<div class="footer_bar d-flex flex-column flex-sm-row align-items-center" id="foot">
						<div class="footer_social ml-sm-auto">
						<ul class="menu_social">
							<li class="menu_social_item">
								<a target="_blank" href="https://youtube.com/chitkaraU">
									<i class="fab fa-youtube"></i>
								</a>
							</li>
							<li class="menu_social_item">
								<a target="_blank" href="https://www.linkedin.com/edu/school?id=43021">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</li>
							<li class="menu_social_item">
								<a target="_blank" href="https://www.instagram.com/chitkarau/">
									<i class="fab fa-instagram"></i>
								</a>
							</li>
							<li class="menu_social_item">
								<a target="_blank" href="https://www.facebook.com/ChitkaraU">
									<i class="fab fa-facebook-f"></i>
								</a>
							</li>
							<li class="menu_social_item">
								<a target="_blank" href="https://twitter.com/chitkarau">
									<i class="fab fa-twitter"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</footer>

	</div>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/greensock/TweenMax.min.js"></script>
	<script src="plugins/greensock/TimelineMax.min.js"></script>
	<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="plugins/greensock/animation.gsap.min.js"></script>
	<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="js/custom.js"></script>

	<div class="modal fade left" id="studentmodal" role="dialog">
		<div class="modal-dialog modal-side modal-top-right">
			<div class="modal-content">
				<div class="modal-header">
						<div class="modal-title">
								<h2>Student Login</h2>    
							</div>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
				<form class="form-horizontal" target="_self" name="f1" id="frm">
					<div class="form-group form-inline">
						<label for="rollno">Username:&nbsp;&nbsp;</label>
							<input type="text" class="form-control" name="user" id="studentrollno" required>
					</div>
   
						<div class="form-group form-inline">
							<label for="password">Password:&nbsp;&nbsp;&nbsp;</label>
							<input type="password" class="form-control" name="pass" id="studentpassword" required>
						</div>
						<input type="checkbox" onclick="showStudentPassword()">Show Password

					
				
				<div class="modal-footer">
					<input type="submit" name = "b1" value="Login" class="bttn">
					<input type="reset" value="Reset" class="bttn1">
                                        
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
	</div> 

  <div class="modal fade" id="teachermodal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="modal-title">
                            <h2>Teacher Login</h2>    
						</div>
						<button type="button" class="close" data-dismiss="modal">&times;</button>

                        
                    </div>
                    <div class="modal-body">
                           <form class="form-horizontal" target="_self" name="f2">
                         <div class="form-group form-inline">
                                <label for="email">Username:&nbsp;&nbsp;</label>
                                <input type="text" class="form-control" name="t1" id="teacherusername" required>
                               </div>
                            <div class="form-group form-inline">
                                <label for="password">Password:&nbsp;&nbsp;&nbsp;</label>
                                <input type="password" class="form-control" name="t2" id="teacherpassword" data-toggle="teacherpassword" required>

							</div>
							<input type="checkbox" onclick="showTeacherPassword()">Show Password
                           </form>
                            </div>
                            <div class="modal-footer">
                            <input type="submit" name = "b2" value="Login" class="bttn">
                            <input type="reset" value="Reset" class="bttn1">
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
	 
	
	<div class="modal fade" id="adminmodal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title">
					<h2>Admin Login</h2>    
					</div>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					
				</div>
				<div class="modal-body">
				<form class="form-horizontal" target="_self" name="f3">
					<div class="form-group form-inline">
					<label for="emailid">Username:&nbsp;&nbsp;</label>
					<input type="text" class="form-control" name="t3" id="adminemail" required>
				</div>
					<div class="form-group form-inline">
						<label for="password">Password:&nbsp;&nbsp;&nbsp;</label>
						<input type="password" class="form-control" name="t4" id="adminpassword" required>

					</div>
					<input type="checkbox" onclick="showAdminPassword()">Show Password
				</form>
				</div>
					<div class="modal-footer">
						  <input type="submit" name = "b3" value="Login" class="bttn">
					<input type="reset" value="Reset" class="bttn1"> 
                                        
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
		
	</div>

</body>

</html>
