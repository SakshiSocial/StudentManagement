<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.CourseReg" %>
    <%@page import="com.dao.DAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Update</title>
</head>
<body>
<%
try{
	CourseReg c=new CourseReg();
	String btn=request.getParameter("btn");
	c.setCourse_id(Integer.parseInt(request.getParameter("cid")));
	c.setCourse_name(request.getParameter("cname"));
	c.setCourse_icon(request.getParameter("cicon"));
	c.setCourse_desc(request.getParameter("cdesc"));
	String q="";
	if(btn.equals("Update"))
	{
	q=DAO.UpdateRecord("update course_reg set course_name='"+c.getCourse_name()+"',course_desc='"+c.getCourse_desc()+"'where course_id="+c.getCourse_id()+"");
	}
	else if(btn.equals("Delete"))
	{
	q=DAO.UpdateRecord("delete from course_reg where course_id="+c.getCourse_id()+"");
	}
	
	out.println(q);
	if(q.equals("yes")){
		out.println("Record Updated...");
	}
	else{
		out.println("Record not Updated...");
	}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>