package com.simone.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/redirect")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location = request.getParameter("page");
		if(location != null) {
			if(location.equals("ibm"))
				response.sendRedirect("http://www.ibm.com");
			else if(location.equals("hp"))
					response.sendRedirect("http://www.hp.com");
			else if(location.equals("htasgroupp"))
					response.sendRedirect("http://www.tasgroup.eu");
			else
				response.sendRedirect("index.html");
		}
	}

}
