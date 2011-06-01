<html>
<head>
<script src="jquery-1.5.1.min.js" type="text/Javascript"></script>
<script>
$(function() { 
	$("#helloWorld").click(function() {
		// Chrome or Safari right click on page and select Inspect Element to see log
		// FireFox install FireBug
		// IE9 F12 or Developer Tools
		console.log("helloWorld clicked");
		$.getJSON("helloworldjson", function(results) {
				
			console.log("Results are " + results.hello);
			alert("Results: " + results.hello);
		});	  
	});
});
</script>
</head>
<body>
<h2>Hello World! <%= new java.util.Date() %></h2>
<hr>
<div id="helloWorld">Click Me for Hello World JSON via JAX-RS</div>
<div id="collection">Click Me for a Collection of JSON via JAX-RS</div>


</body>
</html>
