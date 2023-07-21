<%
	String username =(String) session.getAttribute("username");
	if(username != null){
		session.invalidate();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<h2>Hai appena effettuato il logout</h2>
	<p>Per rientrare: <a href="Form.jsp"></a></p>

</body>
</html>
<%
	}else{
		response.sendRedirect("Form.jsp");
	}
%>