package com.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@SuppressWarnings("serial")
public class ServiceServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
		
		LookupService lookupService = (LookupService) context.getBean("lookupService");
		
		String id = request.getParameter("cust-id");
		String address;
		
		if(isEmpty(id)){
			address = "missing-id.jsp";
		} else {
			Customer customer = lookupService.getCustomer(id);
			if(customer == null) {
				request.setAttribute("id", id);
				address="invalid-id.jsp";
			} else {
				request.setAttribute("customer", customer);
				address = "show-customer.jsp";
			}
		}
		address = "/WEB-INF/views/" + address;
		
		ColorPreferences colorPreferences = (ColorPreferences) context.getBean("colorPreferences");
		colorPreferences.setBackground(request.getParameter("bg"));
		colorPreferences.setForeground(request.getParameter("fg"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

	private boolean isEmpty(String value){
		return((value == null) || (value.trim().equals("")));
	}
}
