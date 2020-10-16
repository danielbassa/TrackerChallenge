<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="it.trackerchallenge.entity.User"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracker Challenge</title>
</head>
<body>
<jsp:useBean id="loggedUser" class="it.trackerchallenge.entity.User" scope="session"/>
	<h3>Tracker Application</h3>
	
	   <fieldset>
	   
	   <legend><b>Profile</b></legend>
	
		<form method="POST" action="/TrackerChallenge/edit-user">
		
			<label>Name: </label>
			<input type="text" name="name" value="<jsp:getProperty property="name" name="loggedUser"/>" ><br>
			<label>Surname: </label> 
			<input type="text" name="surname" value="<jsp:getProperty property="surname" name="loggedUser"/>" ><br>
			<label>Email: </label> 
			<input type="text" name="email" value="<jsp:getProperty property="email" name="loggedUser"/>" disabled><br>
			<label>Mobile: </label> 
			<input type="text" name="mobile" value="<jsp:getProperty property="mobile" name="loggedUser"/>" ><br>
			<label>Password: </label> 
			<input type="text" name="password" value="<jsp:getProperty property="password" name="loggedUser"/>"><br>
		
		
			<input type="submit" value="EDIT"/>
		
		
		</form>
	
	</fieldset>

	<a href="/TrackerChallenge/index">Back</a>

</body>
</html>