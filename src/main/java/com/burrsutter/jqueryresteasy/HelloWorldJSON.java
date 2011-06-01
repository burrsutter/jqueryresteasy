package com.burrsutter.jqueryresteasy;

import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;

@Path("/helloworldjson")
public class HelloWorldJSON {
	@GET
	@Produces("application/json")
	public String sayHello() {
		return "{ \"hello\" : \"world\" }";
	}
}
