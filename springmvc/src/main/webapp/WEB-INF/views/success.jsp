<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <h1>welcome ${user.Uname}</h1> --%>
	<h1 style="color:green" >user created successfully ...welcome ${Header } !!</h1>
	<h1 style="color:blue">User created with id ${msg }</h1>
	<p>${desc }</p>
	
  
	<h3>your email is ${user.email}</h3>
	<h3>your password is ${user.password}</h3>
	<h1>welcome ${user.userName}</h1>

	<h4 style="color: red;">don't share to anyone</h4>

</body>
</html>