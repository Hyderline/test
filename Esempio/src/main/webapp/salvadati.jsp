<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(username == null && password == null && !username.equals(" ") && !password.equals(" ")){
		session.setAttribute("username", username);
		response.sendRedirect("transito.jsp");
	}else{
		response.sendRedirect("Form.jsp");
	}
%>
