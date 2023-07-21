<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<span style="float:right">
	<a href="destroySession.jsp">Logout</a>
	</span>
	<form action="loadUser.jsp" method="post">
	<h1>Inserire il nome</h1>
	<input type="text" name="utente"><br>
	<input type="submit" name="aggiungi"><br>
	<%
		ArrayList<?> utenti = (ArrayList<?>)session.getAttribute("utenti");
		for(int i = 0; utenti != null && i<utenti.size(); i++){
			out.println("<br>"+ utenti.get(i));
		}
	%>
	</form>

</body>
</html>