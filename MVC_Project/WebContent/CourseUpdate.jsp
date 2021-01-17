<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.CourseReg" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
                    <h3>Update Course Here</h3>
                </div>
            </div>

<%
try{
	CourseReg c=new CourseReg();
	c.setCourse_id(Integer.parseInt(request.getParameter("cid")));
	ResultSet rs=DAO.displayRecord("select *from course_reg where course_id="+c.getCourse_id()+"");
	if(rs.next()){
		out.println("<html>");
		out.println("<head><title>Course_Registration</title></head>");
		out.println("<body>");
		out.println("<form action=CourseUpdate1.jsp>");
		out.println("<center>");
		out.println("<table border=5 cellspacing=0 cellpadding=10>");
		out.println("<tr><td>Enter Course ID: </td><td><input type=text name=cid value="+rs.getString(1)+" readonly=true></td></tr>");
		out.println("<tr><td>Enter Course Name: </td><td><input type=text name=cname value="+rs.getString(2)+"></td></tr>");
		out.println("<tr><td>Enter Course Icon: </td><td><input type=file name=cicon></td></tr>");
		out.println("<tr><td>Course Description: </td><td><textarea name=cdesc rows=5 cols=30>"+rs.getString(4)+"</textarea></td></tr>");
		out.println("<tr><td><input name=btn type=submit value=Update></td><td><input name=btn type=submit value=Delete></td></tr>");
		out.println("</table>");
		out.println("</center>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>