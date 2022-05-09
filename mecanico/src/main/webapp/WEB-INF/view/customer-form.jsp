<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Save User</title>
	
		  
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Vehicle Maintenance System</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save User</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Vehicle Type:</label></td>
						<td><form:input path="type" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<p><a href="${pageContext.request.contextPath}/customer/list">Return to User List</a></p>
	</div>

</body>

</html>