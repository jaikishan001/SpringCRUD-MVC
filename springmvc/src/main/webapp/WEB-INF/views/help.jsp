<%@page import="java.time.LocalDateTime"%>
<%@page import="org.springframework.util.concurrent.FutureUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>this is help page</h1>
	<h3>contact 10330 for any problem</h3>

	<%-- 	<%
	String name = (String) request.getAttribute("name");
	Integer roll=(Integer)request.getAttribute("rolno");	
	LocalDateTime time=(LocalDateTime)request.getAttribute("time");
			
	%>
	
	<h3>welcome <%=name %>!! your roll no is <%=roll %></h3>
	<h2>time is <%= time.toString()%></h2> --%>


	<!-- using jsp expression language -->
	<h3>welcome ${name }!! your roll no is ${rolno }</h3>
	<h2>time is ${time.toString() }</h2>
	<hr>


	<h2>your marks ${marks}</h2>

	<!-- to traverse through marks we make use of jstl library standard way-->

	<c:forEach var="item" items="${marks }">
		<%--	<h1>${item }</h1> --%>

		<h1>
			<c:out value="${item }" />
		</h1>

	</c:forEach>

</body>
</html>