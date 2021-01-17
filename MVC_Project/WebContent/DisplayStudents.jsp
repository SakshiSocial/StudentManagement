<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.model.StudentReg" %>
    <%@page import="com.model.FacultyReg" %>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.SubjectAllotment" %>
    <%@page import="com.model.AddSubject" %>
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
	<form action="Attendence1.jsp">
<%
try{
	
	int count=0;
	String subid = request.getParameter("subid");
	String fid=request.getParameter("fid");
	String q="select * from Student_reg s, add_subject a, branch_reg b where sub_id='"+subid+"' and s.Branch_id=a.branch_id and s.Branch_id=b.branch_id";
	//out.println(q);
	ResultSet rs=DAO.displayRecord(q);
	out.println("<input type=text value="+subid+" name=subid readonly hidden>");
	
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
						
						
						<li class="nav-item"><a href=DisplaySubjects.jsp?fid=<%out.println(fid);%> class="nav-link" >Subjects</a></li>
						
						<li class="nav-item"><a class="nav-link" href="FacultyLogOut.jsp">Logout</a></li>
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
			<h1>Mark Attendence<span class="m_1">Lorem Ipsum dolroin gravida nibh vel velit.</span></h1>
		</div>
	</div>
	
	
	<div id="pricing-box" class="section wb">
        <div class="container">
			<div class="row">
               
                    <div class="pricingTable pink">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>Attendence</h3>
                            </span>
                            <span class="price-value"> <span>Fill check box</span><span>of students who are present today in class</span></span>
                        </div>

                        <div class="pricingContent">
                            <br>
                            <center><table cellspacing=0 cellpadding=12 border=0 width=100% layout=fixed>
                            
                                <%
                                out.println("<input type=text value="+subid+" name=subid readonly hidden>");
                                out.println("<tr><th>Mark</th><th>Student ID</th><th>Student Name</th><th>Branch</th><th>Subject</th></tr>");
                              
                                do {
                        			out.println("<tr><td><input type=checkbox name=att value="+rs.getString(1)+"></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(18)+"</td><td>"+rs.getString(13)+"</td></tr>");
                        			count++;
                        		}while(rs.next());
                                out.println("<input type=hidden value="+count+" name=totalstd>");
                            	out.println("<tr><td colspan=2><input type=submit value=Submit></td><br><td colspan=3><input type=reset value=Reset></td><tr>");
                            	
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
</form>
</body>
</html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Mark Attendence</title>
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
                    <h3>Mark Attendence Here</h3>
                </div>
            </div>
<form action="Attendence1.jsp">
<%--
try{
	int count=0;
	String subid = request.getParameter("subid");
	String q="select * from Student_reg s, add_subject a, branch_reg b where sub_id='"+subid+"' and s.Branch_id=a.branch_id and s.Branch_id=b.branch_id";
	//out.println(q);
	ResultSet rs=DAO.displayRecord(q);
	out.println("<input type=text value="+subid+" name=subid readonly hidden>");
	if(rs.next()){
		out.println("<center><table border=5 cellspacing=0 cellpadding=10>");
		out.println("<tr><th>Mark</th><th>Student ID</th><th>Student Name</th><th>Branch</th><th>Subject</th></tr>");
		do {
			out.println("<tr><td><input type=checkbox name=att value="+rs.getString(1)+"></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(18)+"</td><td>"+rs.getString(13)+"</td></tr>");
			count++;
		}while(rs.next());
		
	}
	out.println("<input type=hidden value="+count+" name=totalstd>");
	out.println("<tr><td colspan=2><input type=submit value=Submit></td><br><td colspan=3><input type=reset value=Reset></td><tr>");
	out.println("</center></table>");
	
}catch(Exception exp){
	out.println("Error: "+exp);
}
--%>
</form>
</body>
</html>