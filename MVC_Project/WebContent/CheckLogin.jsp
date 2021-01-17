<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.FacultyReg" %>
    <%@page import="com.model.StudentReg" %>
    <%@page import="java.sql.*" %>
    <%@page import="com.dao.DAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String lid=request.getParameter("lid");
	String pass=request.getParameter("pass");
	String iam=request.getParameter("iam");
	if(iam.equals("Admin")){
		if(lid.equals("Admin") && pass.equals("Admin")){
			session=request.getSession(true);
			session.putValue("slid",lid);
			session.putValue("stime",(new java.util.Date()));
			response.sendRedirect("AdminHome.jsp");
		}
		else{
			out.println("ID/Password not Matched");
		}
	}
	else if(iam.equals("Faculty")){
		String q="select * from faculty_reg where Email='"+lid+"' and Password='"+pass+"'";
		ResultSet rs=DAO.displayRecord(q);
		if(rs.next()){
			session=request.getSession(true);
			session.putValue("fslid",lid);
			session.putValue("fstime",(new java.util.Date()));
			response.sendRedirect("FacultyHome.jsp?fid="+rs.getString(2)+"");
		}
		else{
			out.println("ID/Password not matched");
		}
		rs.close();

	}
	else if(iam.equals("Student")){
		String sid=request.getParameter("sid");
		String q="select * from student_reg where Email='"+lid+"' and Password='"+pass+"'";
		ResultSet rs=DAO.displayRecord(q);
		if(rs.next()){
			session=request.getSession(true);
			session.putValue("sslid",lid);
			session.putValue("sstime",(new java.util.Date()));
			response.sendRedirect("StudentHome.jsp?sid="+rs.getString(1)+"");
		}
		else{
			out.println("ID/Password not matched");
		}
		rs.close();
	}
	else{
		out.println("Invalid Input..");
	}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>