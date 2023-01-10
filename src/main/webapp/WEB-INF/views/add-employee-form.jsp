<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
<script type="text/javascript">
	function fncalage(){
		var userDateinput=document.getElementById("txtdob").value;
		console.log(userDateinput);
		
		//convert user to date object
		var birthDate = new Date(userDateinput);
		/* console.log(" birthDate"+ birthDate); */
		
	
		
		var today=new Date(); 
		
		var age=today.getTime()-birthDate.getTime();
		var Age=Math.floor(age/(1000*60*60*24*365.25));
		    document.getElementById("age").value=Age;
		    console.log(Age);
	}

</script>
	<jsp:include page="index.jsp"></jsp:include>

	<div class="container">
		<form action="employee" method="Post">
			<label>Employee Name</label> <br> <input type="text"
				name="name"> <br> <br> <label>Employee
				EmailId</label><br> <input type="email" name="eMail"> <br>
			<br> <label>Employee DateOfBirth</label><br> <input
				type="date" name="dateOfBirth" id="txtdob"> <br> <br> 
				
				<label>Employee Age</label><br>
				<input type="number" name="age" id="age" onmouseover="fncalage()" readonly ><br>
				<br> 
				
				
				<label>Employee
				Salary</label><br> <input type="text" name="salary"> <br>
			<br>
			
			 <label>Employee Status</label><br> 
			<label for="active">Active</label>
			<input type="radio" name="empStatus" value="Active" id="active">
			<label for="inactive">InActive</label>
			<input type="radio" name="empStatus" value="InActive" id="inactive"> <br> <br>

			<input type="submit" value="Add Employee">

		</form>
	</div>

</body>
</html>