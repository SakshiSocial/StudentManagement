<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.DAO" %>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.Date" %>
    <%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Date today=new Date();
	int present=0;
	int absent=0;
	int totalstd=Integer.parseInt(request.getParameter("totalstd"));
	SimpleDateFormat date=new SimpleDateFormat("dd-MM-YYYY");
	String subid = request.getParameter("subid");
	String TodaysDate=date.format(today);
  String[] att=request.getParameterValues("att");
  for(int i=0;i<att.length;i++){
	 String q=DAO.UpdateRecord("insert into attendence(sub_id, std_id, date) values("+subid+","+att[i]+",'"+TodaysDate+"')");
	 present++;
  }
  absent=totalstd-present;
  out.println("Attendence Inserted..<br><br><br>");
  out.println("No. of Present Students: "+present+"<br>");
  out.println("No. of Absent Students: "+absent);
  }catch(Exception exp){
	 out.println("Error: "+exp);
	}
%>
</body>
</html>