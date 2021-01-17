<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.BranchReg" %>
    <%@page import="com.model.AddSubject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Subjects</title>

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
                    <h3>Add Subjects Here</h3>
                </div>
            </div>

<center>
<form action="SubmitSubject.jsp">
<table border="5" cellspacing="0" cellpadding="7">

<%
try{
	AddSubject a=new AddSubject();
	a.setBranch_id(Integer.parseInt(request.getParameter("bidd")));
out.println("<tr><td>Branch ID: </td><td><input type=number value="+a.getBranch_id()+" name=bidd readonly></td></tr>");
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
<tr><td>Subject Name: </td><td><input type="text" name="subname"></td></tr>
<tr><td>Semester: </td><td><input type="text" name="subsem"></td></tr>
<tr><td>Description: </td><td><input type=radio name="subdesc" value="theory">Theory<br><input type=radio name="subdesc" value="practical">Practical<br></td></tr>
<tr><td><input type="submit" value="Submit"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>
</center>
</body>
</html>