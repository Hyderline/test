<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
	String username =(String) session.getAttribute("username");
	if(username != null){
%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parametri sessione</title>
</head>
<body>
<h1>Username:</h1><strong><%=username %></strong>
<p> Id univoco di sessione:&nbsp; <%=session.getId() %></p>
<p>
	Creazione sessione:&nbsp; <%= new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date(session.getCreationTime())) %>
</p>
<p>
	Tempo di inattivit&agrave;:&nbsp;<%= new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date(session.getCreationTime())) %>
</p>
<p>
	<a href="logout.jsp">Logout sessione</a>
</p>
</body>
</html>
<%
	}else{
		response.sendRedirect("Form.jsp");
	}
%>