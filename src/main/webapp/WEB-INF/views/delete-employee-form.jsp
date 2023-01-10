<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>

	<div class="container">
		<form action="delete-employee" method="get">
			<label>Search Employee Id</label><br> <input type="number"
				name="id"> <br>
			<br> <input type="submit" value="search">

		</form>
	</div>

</body>
</html>