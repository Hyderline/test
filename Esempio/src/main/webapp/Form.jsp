<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body>
<form action="salvadati.jsp" method="post">
	<input type="text" name="username" required>
	<label for="username">Username</label>
	<br>
	<input type="password" name="password" required>
	<label for="password">Password</label>
	<hr>
	<input type="submit" name="Invia dati" >
</form>
</body>
</html>