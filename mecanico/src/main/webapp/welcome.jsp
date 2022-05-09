<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
</head>
<body>
	<h2>Welcome ${param["username"]}</h2>
	
	<form action="thank.jsp" method="post">
		Choose Services:<br/>
		<select>
			<option>Regular Maintenance</option>
			<option>Insurance</option>
			<option>Towing</option>
			<option>Find nearby garages</option>
		</select>
		
		<input type="submit" value="Book service" />
	</form>
</body>
</html>