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


    <h4>Home</h4>
    
    <ul>	
		<li><a href="/TrackerChallenge/profile">Profile</a></li>
		<li><a href="/TrackerChallenge/add_itinerary">Add itinerary</a></li>
		<li><a href="/TrackerChallenge/view">View your borrows</a></li>
    </ul>
    
    <form method="POST" action="/TrackerChallenge/logout-user">
		<input type="submit" value="LOGOUT"/>
	</form>
    
    
</body>

</html>