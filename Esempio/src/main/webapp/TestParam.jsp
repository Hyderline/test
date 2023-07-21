<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leggere parametri</title>
</head>
<body>
<h1>Parametro di inizializzazione</h1>
<p><%= pageContext.getServletConfig().getInitParameter("initp") %></p>
<h1>Parametro di inizializzazione</h1>
<p><%= config.getInitParameter("initp") %></p>
<h1>Parametro di contesto</h1>
<p><%= pageContext.getServletContext().getInitParameter("contextp") %></p>



</body>
</html>