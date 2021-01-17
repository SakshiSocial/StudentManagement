<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.FacultyReg" %>
    <%@page import="com.dao.DAO" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	FacultyReg f=new FacultyReg();
	String flid=request.getParameter("flid");
	String fpass=request.getParameter("fpass");
	String q="select * from faculty_reg where Email='"+flid+"' and Password='"+fpass+"'";
	ResultSet rs=DAO.displayRecord(q);
	if(rs.next()){
		session=request.getSession(true);
		session.putValue("fslid",flid);
		session.putValue("fstime",(new java.util.Date()));
		response.sendRedirect("FacultyHome.jsp?fid="+rs.getString(2)+"");
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