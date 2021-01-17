<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	session=request.getSession(false);
	String lid=session.getValue("fslid").toString();
	String stime=session.getValue("fstime").toString();
	session.invalidate();
}catch(Exception exp){
		out.println("Error: "+exp);
		response.sendRedirect("Login.jsp");
	}
%>
</body>
</html>