<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.SubjectAllotment" %>
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
	SubjectAllotment sa=new SubjectAllotment();
	sa.setFaculty_id(Integer.parseInt(request.getParameter("fid")));
	sa.setSubject_id(Integer.parseInt(request.getParameter("subid")));
	sa.setSa_date(request.getParameter("sadate"));
	String s="insert into subject_allotement(faculty_id,subject_id,sa_date) values("+sa.getFaculty_id()+","+sa.getSubject_id()+",'"+sa.getSa_date()+"')";
	out.println(s);
	String q=DAO.UpdateRecord(s);
	out.println(q);
	if(q.equals("yes"))
		out.println("Record Inserted...");
	else
		out.println("Record not Inserted...");
	
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>