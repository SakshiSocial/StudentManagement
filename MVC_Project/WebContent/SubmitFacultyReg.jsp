<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.FacultyReg" %>
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
	FacultyReg f=new FacultyReg();
	f.setBranch_id(Integer.parseInt(request.getParameter("bid")));
	f.setFaculty_name(request.getParameter("fname"));
	f.setEmail(request.getParameter("femail"));
	String q=DAO.UpdateRecord("insert into faculty_reg(branch_id,faculty_name,Email,password) values("+f.getBranch_id()+",'"+f.getFaculty_name()+"','"+f.getEmail()+"','"+"f123"+"')");
	out.println(q);
	if(q.equals("yes")){
		out.println("Record Inserted...");
	}
	else{
		out.println("Record not Inserted...");
	}
}catch(Exception ex){
	out.println("Error: "+ex);
}
%>
</body>
</html>