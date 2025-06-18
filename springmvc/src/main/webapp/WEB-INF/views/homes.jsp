<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
</head>
<body>
	<%
	String myname = (String) request.getAttribute("name");
	Integer myId = (Integer) request.getAttribute("id");
	List<String> fri = (List<String>) request.getAttribute("f");
	%>

	<h1>index url pe</h1>
	<h1>inside home page</h1>
	<h1>
		my name is
		<%=myname%></h1>
	<h1>
		my id is
		<%=myId%></h1>
	<%
	for (String s : fri) {
		out.println(s);
	}
	%>
	
	<!-- another method for expressin lang -->
	<%for(String s:fri){
		
		%>
		
		<h1><%=s %></h1>
		
	<% }%>


</body>
</html>