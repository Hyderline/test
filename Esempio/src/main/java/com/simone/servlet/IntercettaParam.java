package com.simone.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/letturaParam")
public class IntercettaParam extends HttpServlet {
	private static final long serialVersionUID = 4695621315876123422L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		  out.println("<!doctype html>");
		  out.println("<html>");
		  out.println("<head><title>Inrcettare una richiesta di tipo POST</title></head>");
		  out.println("<body>");
		  
		  out.println("<table>");
		  out.println("<tr>");
		  out.println("<td>Nome paramentro</td>");
		  out.println("<td>Valori paramentro</td>");
		  out.println("</tr>");
		
		Enumeration<?>nomiParamentri = request.getParameterNames();
		while(nomiParamentri.hasMoreElements()) {
			String paramName = (String)nomiParamentri.nextElement();
			out.println("<tr>");
			out.println("<td>"+paramName+"</td>");
			out.println("<td>");
			String[] valoriParametro = request.getParameterValues(paramName);
			
			if(valoriParametro.length==1) {
				String paramValue = valoriParametro[0];
				if(paramValue.length() == 0)
					out.println("<i>Nessun Paramentro</i>");
				else
					out.println(paramValue);
			}else {
				out.println("<ul>");
				for(int i=0; i<valoriParametro.length; i++) {
					out.println("<li>"+valoriParametro[i]+"</i>");
				}
				out.println("</ul>");
			}
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
