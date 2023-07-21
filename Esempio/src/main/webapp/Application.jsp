<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%!
    	int s = 10;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Integer i = 10;
	application.setAttribute("valore", i);
	
	int v =(Integer) application.getAttribute("valore");
%>

</body>
</html>