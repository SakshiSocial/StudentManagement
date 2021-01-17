<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.BranchReg" %>
    <%@page import=com.dao.DAO %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branch_Delete</title>
</head>
<body>
<%
try{
	BranchReg c=new BranchReg();
	c.setCourse_id(Integer.parseInt(request.getParameter("cid")));
	c.setBranch_id(Integer.parseInt(request.getParameter("bid")));
	c.setBranch_name(request.getParameter("bname"));
	c.setBranch_icon(request.getParameter("bicon"));
	c.setBranch_desc(request.getParameter("bdesc"));
	String q=DAO.UpdateRecord("delete from branch_reg where branch_id="+c.getBranch_id()+"");
	out.println(q);
	if(q.equals("yes")){
		out.println("Record Deleted...");
	}
	else{
		out.println("Record not Deleted...");
	}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>