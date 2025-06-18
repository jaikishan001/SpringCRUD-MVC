<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<title>
index
</title>

<link href="<c:url value="/resources/css/style.css" />" >
<script src="<c:url value="/resources/js/script.js" />"  ></script>
</head>
<body>
<h2>Hello World!</h2>

<img alt="myimage" src="<c:url value="/resources/image/d.png" />">
<form action="move" >
<input type="submit" value="got to form">
</form>

<form action="move1" >
<input type="submit" value="got to help">
</form>

<form action="move2" >
<input type="submit" value="got to about">
</form>

</body>
</html>
