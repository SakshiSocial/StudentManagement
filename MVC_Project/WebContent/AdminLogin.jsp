<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<center>
<h1>Admin Login</h1>
<form action="AdminCheckLogin.jsp">
<table border="5" cellpadding="7" cellspacing="0">
<tr><td>Enter Login ID: </td><td><input type="text" name=aid required></td></tr>
<tr><td>Enter Password: </td><td><input type="password" name="apswrd" required></td></tr>
<tr><td><input type="submit" value="Login"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>
</center>
</body>
</html>