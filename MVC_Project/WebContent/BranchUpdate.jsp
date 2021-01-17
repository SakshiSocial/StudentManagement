<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.BranchReg" %>
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
                    <h3>Update Branch Here</h3>
                </div>
            </div>

<%
try{
	BranchReg b=new BranchReg();
	b.setBranch_id(Integer.parseInt(request.getParameter("bid")));
	ResultSet rs=DAO.displayRecord("select *from branch_reg where branch_id="+b.getBranch_id()+"");
	if(rs.next()){
		out.println("<html>");
		out.println("<head><title>Branch_Registration</title></head>");
		out.println("<body>");
		out.println("<form action=BranchUpdate1.jsp>");
		out.println("<center>");
		out.println("<table border=5 cellspacing=0 cellpadding=10>");
		out.println("<tr><td>Enter Course ID: </td><td><input type=text name=cid value="+rs.getString(1)+"></td></tr>");
		out.println("<tr><td>Enter Branch ID: </td><td><input type=text name=bid value="+rs.getString(2)+" readonly=true></td></tr>");
		out.println("<tr><td>Enter Branch Name: </td><td><input type=text name=bname value="+rs.getString(3)+"></td></tr>");
		out.println("<tr><td>Enter Branch Icon: </td><td><input type=file name=bicon></td></tr>");
		out.println("<tr><td>Branch Description: </td><td><textarea name=bdesc rows=5 cols=30>"+rs.getString(5)+"</textarea></td></tr>");
		out.println("<tr><td><input type=submit value=Update name=btn></td><td><input type=submit value=Delete name=btn></td></tr>");
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