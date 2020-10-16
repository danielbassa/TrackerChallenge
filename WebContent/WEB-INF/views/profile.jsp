<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracker Challenge</title>
</head>
<body>

	<h3>Tracker Application</h3>
	
	   <fieldset>
	   
	   <legend><b>Profile</b></legend>
	
		<form method="POST" action="/TrackerChallenge/edit-user">
		
			<label>Name: </label>
			<input type="text" name="name" value="" ><br>
			<label>Surname: </label> 
			<input type="text" name="surname" value="" ><br>
			<label>Email: </label> 
			<input type="text" name="email" value="" disabled><br>
			<label>Mobile: </label> 
			<input type="text" name="mobile" value="" ><br>
			<label>Password: </label> 
			<input type="text" name="password" value=""><br>
		
		
			<input type="submit" value="EDIT"/>
		
		
		</form>
	
	</fieldset>

	<a href="/TrackerChallenge/index">Back</a>

</body>
</html>