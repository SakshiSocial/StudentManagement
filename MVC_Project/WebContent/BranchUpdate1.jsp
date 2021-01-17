<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.BranchReg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch Update</title>
</head>
<body>
<%
try{
	BranchReg b=new BranchReg();
	String btn=request.getParameter("btn");
	b.setCourse_id(Integer.parseInt(request.getParameter("cid")));
	b.setBranch_id(Integer.parseInt(request.getParameter("bid")));
	b.setBranch_name(request.getParameter("bname"));
	b.setBranch_icon(request.getParameter("bicon"));
	b.setBranch_desc(request.getParameter("bdesc"));
	String q="";
	if(btn.equals("Update"))
	{
	q=DAO.UpdateRecord("update branch_reg set course_id='"+b.getCourse_id()+"',branch_name='"+b.getBranch_name()+"',branch_desc='"+b.getBranch_desc()+"'where branch_id="+b.getBranch_id()+"");
	out.println(q);
	}
	else if(btn.equals("Delete"))
	{
	q=DAO.UpdateRecord("delete from branch_reg where branch_id="+b.getBranch_id()+"");
	}
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