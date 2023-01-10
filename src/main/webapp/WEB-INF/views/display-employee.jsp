<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>

<c:choose>
		<c:when test="${ msg.getClass().getSimpleName().equals(\"String\")}">
			<h2>${msg }</h2>
		</c:when>
		<c:when test="${ msg.getClass().getSimpleName().equals(\"EmployeeDto\")}">
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
				<tr>
					<td>${ msg.id }</td>
					<td>${ msg.name }</td>
					<td>${ msg.eMail }</td>
					<td>${ msg.dateOfBirth }</td>
					 <td>${ msg.age }</td> 
					<td>${ msg.salary }</td>
					<td>${ msg.empStatus }</td>
				</tr>
			</table>
		</c:when>
</c:choose>
</body>
</html>