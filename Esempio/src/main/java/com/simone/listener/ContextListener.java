package com.simone.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent event)  { 
    	System.out.println("Distruzione del contesto");
    	event.getServletContext().setAttribute("ID", 0);
    	System.out.println("ID deinizializzato: "+event.getServletContext().getAttribute("ID"));
    }

    public void contextInitialized(ServletContextEvent event)  { 
         System.out.println("ID inizializzato e creazione del contesto");
         event.getServletContext().setAttribute("ID", 1);
    }
	
}
