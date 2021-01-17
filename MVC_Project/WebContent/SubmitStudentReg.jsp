<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.CourseReg" %>
    <%@page import="com.model.BranchReg" %>
    <%@page import="com.model.StudentReg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
StudentReg s=new StudentReg();
s.setStd_name(request.getParameter("sname"));
s.setDOB(request.getParameter("sdob"));
s.setPhoto(request.getParameter("sphoto"));
s.setCity(request.getParameter("scity"));
s.setAddress(request.getParameter("sadd"));
s.setBranch_id(Integer.parseInt(request.getParameter("sbid")));
s.setMobile(Long.parseLong(request.getParameter("smob")));
s.setEmail(request.getParameter("semail"));
s.setPassword(request.getParameter("spass"));
String q=DAO.UpdateRecord("insert into student_reg(Name,DOB,Photo,City,Address,Branch_id,Mobile,Email,Password) values('"+s.getStd_name()+"','"+s.getDOB()+"','"+s.getPhoto()+"','"+s.getCity()+"','"+s.getAddress()+"',"+s.getBranch_id()+","+s.getMobile()+",'"+s.getEmail()+"','"+"123"+"')");
out.println(q);
if(q.equals("yes")){
	out.println("Record Inserted...");
}
else{
	out.println("Record not Inserted...");
}
}catch(Exception exp){
	out.println("Error: "+exp);
}
%>
</body>
</html>