<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Application</title>
</head>
<body>

	<h3>Tracker Application</h3>

		<fieldset>
		
			<legend><b>Sign in</b></legend>

			<form method="POST" action="/TrackerChallenge/signin-user">

				<label>Name: </label>
				<input type="text" name="name"/><br>
				<label>Surname</label> 
				<input type="text" name="surname"/><br>
				<label>Email: </label>
				<input type="text" name="email"/><br>
				<label>Mobile: </label>
				<input type="text" name="mobile"/><br>
				<label>Password: </label> 
				<input type="password" name="password"/><br>

				<input type="submit" value="SIGN IN"/>
			
			</form>
		
		</fieldset>
		
		
	<a href="/TrackerChallenge/login">Back</a>

</body>
</html>