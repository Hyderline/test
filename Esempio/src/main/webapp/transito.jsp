<%
	String username =(String) session.getAttribute("username");
	if(username != null){
		response.sendRedirect("visualizza.jsp");
	}else{
		response.sendRedirect("Form.jsp");
	}
%>