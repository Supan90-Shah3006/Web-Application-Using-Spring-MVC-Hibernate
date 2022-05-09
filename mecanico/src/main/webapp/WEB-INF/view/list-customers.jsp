<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

	<title>Mecanico</title>		
</head>

<body>

<div id="wrapper">
	<div id="header">
		<h2>Vehicle Maintenance System</h2>
	</div>
</div>

<div id="container">

	<div id="content">
	
		<!-- put a button - Add User -->
		
		<input type="button" value="Add User"
			   onclick="window.location.href='showFormForAdd'; return false;"
			   class="add-button"
		/>
		<a href="/mecanico/index.jsp">Log out</a>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Vehicle Type</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="tempCustomer" items="${customers}">
			
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>
				
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>
				
				<tr>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td>${tempCustomer.email}</td>
					<td>${tempCustomer.type}</td>
					<td>
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
					</td>
				</tr>
			</c:forEach>
			
		</table>
	
	</div>

</div>

</body>

</html>