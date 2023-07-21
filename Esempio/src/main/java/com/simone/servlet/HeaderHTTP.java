package com.simone.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/headerHTTP")
public class HeaderHTTP extends HttpServlet {
	private static final long serialVersionUID = 8056974673279624994L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head><title>Mostra Header HTTP</title></head>");
		out.println("<body>");
		out.println("<p>Request Method:"+request.getMethod()+"</p>");
		out.println("<p>Request URI:"+request.getRequestURI()+"</p>");
		out.println("<p>Request Protocol:"+request.getProtocol()+"</p>");
		out.println("<p>Request URL:"+request.getRequestURL()+"</p>");
		out.println("<p>Request RemoteAddress:"+request.getRemoteAddr()+"</p>");
		out.println("<p>Request Port:"+request.getRemotePort()+"</p>");
		  
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>Header Name</td>");
		out.println("<td>Header Value</td>");
		out.println("</tr>");
		
		Enumeration<?> headerNames = request.getHeaderNames();
		
		while(headerNames.hasMoreElements()){
			String headerName = (String)headerNames.nextElement();
			out.println("<tr><td>"+headerName+"</td>");
			out.println("<td>"+request.getHeader(headerName)+"</td></tr>");
		}
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
