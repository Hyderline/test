<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%= request.getParameter("nominativo") %><br>
	<%= request.getParameter("data") %><br>
	<%= request.getParameter("tipoCliente") %><br>
</body>
</html>