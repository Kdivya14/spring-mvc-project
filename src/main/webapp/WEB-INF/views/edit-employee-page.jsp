<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
</head>
<body>
<script type="text/javascript">
	function fncalage(){
		var userDateinput=document.getElementById("dateOfBirth").value;
		
		
	
		var birthDate = new Date(userDateinput);
		/* console.log(" birthDate"+ birthDate); */
		
		var today=new Date(); 
		
		var age=today.getTime()-birthDate.getTime();
		var Age=Math.floor(age/(1000*60*60*24*365.25));
		    document.getElementById("age").value=Age;
		   console.log(Age);
	}

</script>

<div class="container">
<form action="/employee-app/update-employee" method="post">
<label>Employee Id</label><br>
			<input type="number" name="id" value="${emp.id }" readonly="readonly">
			<br><br>
			
			<label>Employee Name</label><br>
			<input type="text" name="name" value="${emp.name }">
			<br><br>
			
			<label>Employee EmailId</label><br>
			<input type="email" name="eMail" value="${emp.eMail}">
			<br><br>
			
			<label>Employee Date of Birth</label><br>
			<input type="date" name="dateOfBirth" value="${emp.dateOfBirth }" id="dateOfBirth">
			<br><br>
			
			<label>Employee Age</label><br>
				<input type="number" name="age" id="age" value="${emp.age }"  onmouseover="fncalage()" readonly ><br>
				<br> 
			
			<label>Employee
				Salary</label><br> <input type="text" name="salary" value="${emp.salary }"> <br>
			<br>
			
			<label>Employee Status</label><br> 
			<c:choose>
			<c:when test="${emp.empStatus.equals(\"Active\")}">
			<label for="active">Active</label>
			<input type="radio" name="empStatus" value="Active" id="active"  checked="checked">
			<label for="inactive">InActive</label>
			<input type="radio" name="empStatus" value="InActive" id="inactive"> <br> <br>
			</c:when>
			
		<c:when test="${emp.empStatus.equals(\"InActive\")}">
		<label for="active">Active</label>
			<input type="radio" name="empStatus" value="Active" id="active" >
			<label for="inactive">InActive</label>
			<input type="radio" name="empStatus"  value="InActive"id="inactive" checked="checked"> 
			</c:when>
			<c:otherwise>
					<label for="active">Active</label><input type="radio" name="empStatus" value="Active" id ="Active">
					<label for="Inactive">InActive</label><input type="radio" name="empStatus" value="InActive" id="Inactive">
				</c:otherwise>
			</c:choose>
			<br> 
			<input type="submit" value="Update Employee">
			
</form>
</div>

</body>
</html>