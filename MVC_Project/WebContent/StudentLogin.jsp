<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body>
<center>
<form action="StudentCheckLogin.jsp">
<table border="5" cellspacing="0" cellpadding="7">
<caption><h2>Student Login</h2></caption>
<tr><td>Enter Login ID: </td><td><input type="text" name="slid"></td></tr>
<tr><td>Enter Password: </td><td><input type="password" name="spass"></td></tr>
<tr><td><input type="submit" value="Login"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>
</center>
</body>
</html>