<%@page import="java.util.Date"%>
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
		String nominativo = request.getParameter("nominativo");
		if(nominativo != null && !nominativo.equals("")){
	%>
	<jsp:forward page="forward.jsp">
		<jsp:param value="<%=new Date() %>" name="data"/>
		<jsp:param value="prime" name="tipoCliente"/>
	</jsp:forward>
	<%
	}else{
	%>
	<form action="#" method="post">
		<input type="text" name ="nominativo">	
		<p>
			<input type="submit" value="Invia Dati">
		</p>
	</form>
	<%
		}
	%>

</body>
</html>