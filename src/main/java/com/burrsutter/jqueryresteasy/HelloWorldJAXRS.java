package com.burrsutter.jqueryresteasy;

import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;

@Path("/helloworld")
public class HelloWorldJAXRS {
	@GET
	@Produces("text/plain")
	public String sayHello() {
		System.out.println("sayHello");
		return "Hello World: " + " at " + new java.util.Date();
	}
}
