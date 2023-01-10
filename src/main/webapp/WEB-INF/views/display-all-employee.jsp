<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>
	<h2>All Employees</h2>
	<table border="1" align="center">
		<tr>
			<th>EmployeeNumber</th>
			<th>Name</th>
			<th>EmailId</th>
			<th>DateOfBirth</th>
			<th>Age</th>
			<th>Salary</th>
			<th>Status</th>
		</tr>
		
		<c:forEach var="allEmployee" items="${ emp }">
		<tr>
			<td>${ allEmployee.id }</td>
			<td>${ allEmployee.name }</td>
			<td>${ allEmployee.eMail }</td>
			<td>${ allEmployee.dateOfBirth }</td>
			<td>${ allEmployee.age }</td>
			<td>${ allEmployee.salary }</td>
			<td>${ allEmployee.empStatus }</td>
		</tr>
		</c:forEach>
	</table>


</body>
</html>