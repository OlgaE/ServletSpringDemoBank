package com.demo;

import java.util.Map;

public class LookupServiceImpl implements LookupService {

	private Map<String, Customer> customers;
	
	public Map<String, Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(Map<String, Customer> customers) {
		this.customers = customers;
	}

	public Customer getCustomer(String id) {
		
		if(id == null){
			id = "unknown";
		}
		
		return customers.get(id.toLowerCase());
	}

	
}
