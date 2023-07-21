<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int ID = (Integer)session.getServletContext().getAttribute("ID");
	session.setAttribute("ID", ID);
	session.getServletContext().setAttribute("ID", ID+1);
%>
Registrato l'ID = <%= ID %>
<hr>
<a href="stampaID.jsp">Visualizza valore ID</a>
</body>
</html>