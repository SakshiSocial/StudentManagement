<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.dao.DAO" %>
<!DOCTYPE html>


<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Attendence</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



</head>
<body class="host_version"> 

	<!-- Modal -->
	<%
try{
int tc=0;
String sid=request.getParameter("sid");
String subid=request.getParameter("subid");

String q1="select count(date) from attendence where sub_id="+subid+" group by date having count(date)";
ResultSet rs1=DAO.displayRecord(q1);
if(rs1.next()){
	do{
		tc++;
	}while(rs1.next());
}
rs1.close();

String q="select * from attendence a, add_subject s where a.std_id="+sid+" and a.sub_id="+subid+" and a.sub_id=s.sub_id";
int count=0;
float per=0;
ResultSet rs=DAO.displayRecord(q);
if(rs.next()){

%>
    <header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.html">
					<img src="images/apple-touch-icon.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="CourseDisplay.jsp?sid=<%out.println(sid);%>" >All Courses</a></li>
						
						<li class="nav-item"><a href=DisplayAttendence.jsp?sid=<%out.println(sid);%> class="nav-link" >Attendence</a></li>
						<li class="nav-item"><a class="nav-link" href="StudentLogOut.jsp">Logout</a></li>
					</ul>
<!-- 					<ul class="nav navbar-nav navbar-right">
                        <li><a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#login"><span>Admin</span></a></li>
                    </ul>
	 -->
	 			</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>Attendence<span class="m_1">in <%out.println(rs.getString(7));%></span></h1>
		</div>
	</div>
	
	
	<div id="pricing-box" class="section wb">
        <div class="container">
			<div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable pink">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>Attendence</h3>
                            </span>
                            <span class="price-value"> <span>This is</span><span>your attendence in <%out.println(rs.getString(7)); %></span></span>
                        </div>

                        <div class="pricingContent">
                            <br>
                            <center><table cellspacing=0 cellpadding=12 border=0 width=100% layout=fixed>
                            
                                <tr><th>Date</th><th>Status</th></tr>
                                <%
                                
                                do{
                                	out.println("<tr><td>"+rs.getString(4)+"</td><td style=color:green;>Present</td></tr>");
                                	count++;
                                }while(rs.next());
                                per=((float)count/(float)tc)*100;
                            	out.println("<tr><th>Total Classes taken</th><td>"+tc+"</td></tr>");
                            	out.println("<tr><th>Classes taken by you</th><td>"+count+"</td></tr>");
                            	out.println("<tr><th>Percentage</th><th>"+per+"</th></tr>");
                                }
                                %>
                            </table></center><br>
                        </div><!-- /  CONTENT BOX-->
                        

                    </div>
                </div><!-- end section -->
                </div>                
                </div>
                </div>
                </div>
               
   <div id="testimonials" class="parallax section db parallax-off" style="background-image:url('images/parallax_04.jpg');">
        <div class="container">
            <div class="section-title text-center">
                <h3>Our Team</h3>
                <p>Lorem ipsum dolor sit aet, consectetur adipisicing lit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Lorem ipsum dolor sit aet, consectetur adipisicing lit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="testi-carousel owl-carousel owl-theme">
                        <div class="testimonial clearfix">
							<div class="testi-meta">
                                <img src="images/simmi.jpeg" alt="" class="img-fluid">
                                <h4>Sakshi Talreja </h4>
                            </div>
                            <div class="desc">
                                <h3><i class="fa fa-quote-left"></i> Wonderful Support!</h3>
                                <p class="lead">Hey! This is my first small project on Student Management with new ideas...</p>
                            </div>
                            <!-- end testi-meta -->
                        </div>
                        <!-- end testimonial -->

                    </div><!-- end carousel -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>About US</h3>
                        </div>
                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis montes.</p>   
						<div class="footer-right">
							<ul class="footer-links-soi">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-github"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul><!-- end links -->
						</div>						
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Pricing</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">sakshutalreja1@gmail.com</a></li>
                            <li>India</li>
                            <li>+91 7415682801</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-center">                   
                    <p class="footer-company-name"> Design By : <a href="https://html.design/">html design</a></p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
	<script src="js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode: 700,
			mode: 'horizontal',
			verticalStartPosition: 'left',
			visibleItems: 4
		});
	</script>
<%
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Attendence</title>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
       
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>Your Attendence</h3>
                </div>
            </div>

<%--
try{
int tc=0;
String sid=request.getParameter("sid");
String subid=request.getParameter("subid");

String q1="select count(date) from attendence where sub_id="+subid+" group by date having count(date)";
ResultSet rs1=DAO.displayRecord(q1);
if(rs1.next()){
	do{
		tc++;
	}while(rs1.next());
}
rs1.close();

String q="select * from attendence a where a.std_id="+sid+" and a.sub_id="+subid+"";
int count=0;
float per=0;
ResultSet rs=DAO.displayRecord(q);
if(rs.next()){
	out.println("<center><table border=5 cellspacing=0 cellpadding=10>");
	out.println("<tr><th>Date</th><th>Status</th></tr>");
	do{
		out.println("<tr><td>"+rs.getString(4)+"</td><td style=color:green;>Present</td></tr>");
		count++;
	}while(rs.next());	
}
    per=((float)count/(float)tc)*100;
	out.println("<tr><th>Total Classes taken</th><td>"+tc+"</td></tr>");
	out.println("<tr><th>Classes taken by you</th><td>"+count+"</td></tr>");
	out.println("<tr><th>Percentage</th><th>"+per+"</th></tr>");
	out.println("</center></table>");
}catch(Exception exp){
	out.println("Error: "+exp);
}
--%>
</body>
</html>