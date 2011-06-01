<!DOCTYPE HTML>
<html>
<head>
<title>jQuery + RESTEasy</title>
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
<script src="jquery-1.5.1.min.js" type="text/Javascript"></script>
<style>
.somethingToClick {
	-webkit-border-radius: 10px;
	-khtml-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	border: 2px #0687FF;
	box-shadow: inset 0px 0px 50px #777;
	background: #0687FF;	
	padding: 5px;
	color: #fff;
	cursor: pointer;
}
</style>

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
<h2>Hello World! <%=new java.util.Date()%></h2>
<hr>
<div id="helloWorld" class="somethingToClick">
Hello World via JSON+JAX-RS</div>
<hr>
<div id="collectionList" class="somethingToClick">
java.util.<b>List</b> via JSON+JAX-RS</div>
<hr>
<div id="collectionSet" class="somethingToClick">
java.util.<b>Set</b> via JSON+JAX-RS</div>
<hr>
<div id="collectionMap" class="somethingToClick">
java.util.<b>Map</b> via JSON+JAX-RS</div>
<hr>
<div id="customObject" class="somethingToClick">
<b>Customer</b> object via JSON+JAX-RS</div>
<hr>
<div id="listOfCustomObjects" class="somethingToClick">
java.util.<b>List</b> of <b>Customer</b> objects via JSON+JAX-RS</div>
<hr>

<form name="newcustomer" id="newcustomer"></form>
</body>
</html>
