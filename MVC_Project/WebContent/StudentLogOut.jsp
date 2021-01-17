<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.StudentReg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log Out</title>
</head>
<body>
<%
try{
	session=request.getSession(false);
	String sslid=session.getValue("sslid").toString();
	String sstime=session.getValue("sstime").toString();
	session.invalidate();
}catch(Exception exp){
	response.sendRedirect("Login.jsp");
	out.println("Error: "+exp);
}
%>
</body>
</html>