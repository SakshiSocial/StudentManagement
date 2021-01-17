<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.StudentReg" %>
    <%@page import="com.dao.DAO" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Check Login</title>
</head>
<body>

<%
try{
	StudentReg s=new StudentReg();
	s.setEmail(request.getParameter("slid"));
	s.setPassword(request.getParameter("spass"));
	String sid=request.getParameter("sid");
	String q="select * from student_reg where Email='"+s.getEmail()+"' and Password='"+s.getPassword()+"'";
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next()){
		session=request.getSession(true);
		session.putValue("sslid",s.getEmail());
		session.putValue("sstime",(new java.util.Date()));
		response.sendRedirect("StudentHome.jsp?sid="+rs.getString(1)+"");
	}
	else{
		out.println("ID/Password not matched");
	}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>