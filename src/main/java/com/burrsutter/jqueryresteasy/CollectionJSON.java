package com.burrsutter.jqueryresteasy;

import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;
import java.util.HashMap;

@Path("/collectionjson")
public class CollectionJSON {
	@GET
	@Path("list")
	@Produces("text/json")
	public List<String> getList() {
		List<String> myList = new ArrayList<String>();
		myList.add("ListItem1");
		myList.add("ListItem2");
		myList.add("ListItem3");
		myList.add("ListItem4");
		System.out.println("getList: " + myList);
		return myList;
	}
	@GET
	@Path("set")
	@Produces("text/json")
	public Set<String> getSet() {
		Set<String> mySet = new HashSet<String>();		
		mySet.add("SetItem1");
		mySet.add("SetItem2");
		mySet.add("SetItem3");
		mySet.add("SetItem4");		
		System.out.println("getSet: " + mySet);
		return mySet;
	}
	@GET
	@Path("map")
	@Produces("text/json")
	public Map<String,String> getMap() {
		Map<String, String> myMap = new HashMap<String,String>();		
		myMap.put("MapKey1","MapItem1");
		myMap.put("MapKey2","MapItem2");
		myMap.put("MapKey3","MapItem3");
		myMap.put("MapKey4","MapItem4");
		System.out.println("getMap: " + myMap);
		return myMap;
	}

	@GET
	@Path("customer")
	@Produces("text/json")
	public Customer getCustomer() {
		Customer myCustomer = new Customer();
		myCustomer.setFirstName("Burr");
		myCustomer.setLastName("Sutter");
		myCustomer.setState("GA");
		myCustomer.setStatus(1);
		myCustomer.setUserName("dude");
		System.out.println("getCustomer: " + myCustomer);
		return myCustomer;
	}

	@GET
	@Path("customers")
	@Produces("text/json")
	public List<Customer> getCustomers() {
		Customer myCustomer = new Customer();
		myCustomer.setFirstName("Burr");
		myCustomer.setLastName("Sutter");
		myCustomer.setState("GA");
		myCustomer.setStatus(1);
		myCustomer.setUserName("dude");
		
		Customer anotherCustomer = new Customer();
		anotherCustomer.setFirstName("Ian");
		anotherCustomer.setLastName("Sutter");
		anotherCustomer.setState("MA");
		anotherCustomer.setStatus(2);
		anotherCustomer.setUserName("anotherDude");
		
		List<Customer> customers = new ArrayList<Customer>();
		customers.add(myCustomer);
		customers.add(anotherCustomer);
		
		System.out.println("getCustomers: " + customers);
		return customers;
	}

	
}
