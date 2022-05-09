
<html>
<head>
	<title>Login Page</title>
		  
	<script type="text/javascript">
		function validate() {
			<%
			String user = request.getParameter("username");
			String password = request.getParameter("password");
			
			if (user == "admin" && password == "Admin123") { %>
				return true;
				<% response.sendRedirect("customer/list"); 
			}
			%>
		}
	</script>
</head>

<body>
	
<div id="wrapper">
	<div id="header">
		<h2>Mecanico</h2>
	</div>
</div>
	
<div id="container">
		
		<h3>User Login</h3>
		
		<form action="login-user.jsp" method="post">
			<table>
				
					<tr>
						<td><label>Email:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Login" /></td>
					</tr>
				
			</table> 
		</form>
		
		<h3>Garage Owner Login</h3>
		
		<form name="userForm" method="get" action="customer/list" onsubmit="return validate()" >
			
			<table>
				
					<tr>
						<td><label>User name:</label></td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td><label>Password:</label></td>
						<td><input type="text" name="password" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Login" /></td>
					</tr>
				
			</table>
		</form>
			
	</div>
	
	
</body>
</html>
