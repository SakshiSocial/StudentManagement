<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="com.model.AddSubject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
AddSubject a=new AddSubject();
a.setBranch_id(Integer.parseInt(request.getParameter("bidd")));
a.setSub_name(request.getParameter("subname"));
a.setSemester(Integer.parseInt(request.getParameter("subsem")));
a.setSub_desc(request.getParameter("subdesc"));
String q="insert into add_subject(branch_id,sub_name,sub_sem,sub_desc) values("+a.getBranch_id()+",'"+a.getSub_name()+"',"+a.getSemester()+",'"+a.getSub_desc()+"')";
String rs=DAO.UpdateRecord(q);
out.println(rs);
if(rs.equals("yes")){
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