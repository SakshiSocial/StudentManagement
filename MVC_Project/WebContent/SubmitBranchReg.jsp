<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.BranchReg" %>
    <%@page import="com.dao.DAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Registration</title>
</head>
<body>
<%
try{
	BranchReg b=new BranchReg();
	b.setCourse_id(Integer.parseInt(request.getParameter("cid")));
	b.setBranch_name(request.getParameter("bname"));
	b.setBranch_icon(request.getParameter("bicon"));
	b.setBranch_desc(request.getParameter("bdesc"));
	String q=DAO.UpdateRecord("insert into branch_reg(course_id,branch_name,branch_icon,branch_desc) values("+b.getCourse_id()+",'"+b.getBranch_name()+"','"+b.getBranch_icon()+"','"+b.getBranch_desc()+"')");
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