<!DOCTYPE HTML>
<html>
<head>
<title>jQuery Mobile + RESTEasy</title>
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<link rel="stylesheet"  href="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.css" />

<script src="jquery-1.5.1.min.js" type="text/Javascript"></script>
<script src="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.js"></script>


<script>
	$(function() {
		$("#helloWorld").click(function() {
			// Chrome or Safari right click on page and select Inspect Element to see log
			// FireFox install FireBug
			// IE9 F12 or Developer Tools
			console.log("helloWorld clicked");
			$.getJSON("helloworldjson", function(results) {
				console.log("returned " + results.hello);
				alert("returned: " + results.hello);
			});
		});
	});
	$(function() {
		$("#collectionList").click(function() {
			console.log("collectionList clicked");
			$.getJSON("collectionjson/list", function(results) {
				console.log("returned are " + results);
				alert("returned: " + results);
				$.each(results, function(index, result) {
					console.log(index + " " + result);
				});
			});
		});
	});
	$(function() {
		$("#collectionSet").click(function() {
			console.log("collectionSet clicked");
			$.getJSON("collectionjson/set", function(results) {
				console.log("returned are " + results);
				alert("returned: " + results);
				$.each(results, function(index, result) {
					console.log(index + " " + result);
				});
			});
		});
	});

	$(function() {
		$("#collectionMap").click(function() {
			console.log("collectionMap clicked");
			$.getJSON("collectionjson/map", function(results) {
				console.log("returned are " + results);
				alert("returned: " + results);
				$.each(results, function(index, result) {
					console.log(index + " " + result);
				});
			});
		});
	});
	$(function() {
		$("#customObject").click(function() {
			console.log("customObject clicked");
			$.getJSON("collectionjson/customer", function(returnedCustomer) {
				console.log("returned are " + returnedCustomer);
				alert("returned: " + returnedCustomer);
				console.log(returnedCustomer.firstName);
				console.log(returnedCustomer.lastName);
				console.log(returnedCustomer.state);
				console.log(returnedCustomer.status);
			});
		});
	});
	$(function() {
		$("#listOfCustomObjects").click(function() {
			console.log("listOfCustomObjects clicked");
			$.getJSON("collectionjson/customers", function(returnedCustomers) {
				console.log("returned are " + returnedCustomers);
				alert("returned: " + returnedCustomers);
				$.each(returnedCustomers, function(index, aCustomer) {
					console.log(aCustomer.firstName);
					console.log(aCustomer.lastName);
					console.log(aCustomer.state);
					console.log(aCustomer.status);
				});
			});
		});
	});
	
</script>
</head>
<body>
<div data-role="page" data-theme="b">
	<div data-role="header" data-theme="b">
		<h2>Hello World! <%=new java.util.Date()%></h2>
	</div>
	<div data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="c" data-dividertheme="b">
			<li><a href="#" id="helloWorld">Hello World via JSON+JAX-RS</a></li>
			<li><a href="#" id="collectionList">java.util.<b>List</b> via JSON+JAX-RS</a></li>
			<li><a href="#" id="collectionSet">java.util.<b>Set</b> via JSON+JAX-RS</a></li>
			<li><a href="#" id="collectionMap">java.util.<b>Map</b> via JSON+JAX-RS</a></li>
			<li><a href="#" id="customObject"><b>Customer</b> object via JSON+JAX-RS</a></li>						
			<li><a href="#" id="listOfCustomObjects">java.util.<b>List</b> of <b>Customer</b> objects via JSON+JAX-RS</a></li>			
		</ul>
	</div> <!-- content -->
</div><!-- page -->
</body>
</html>
