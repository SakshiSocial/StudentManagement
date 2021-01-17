<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.CourseReg" %>
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
	CourseReg c=new CourseReg();
	c.setCourse_name(request.getParameter("cname"));
	c.setCourse_icon(request.getParameter("cicon"));
	c.setCourse_desc(request.getParameter("cdesc"));
	String q=DAO.UpdateRecord("insert into course_reg(course_name,course_icon,course_desc) values('"+c.getCourse_name()+"','"+c.getCourse_icon()+"','"+c.getCourse_desc()+"')");
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