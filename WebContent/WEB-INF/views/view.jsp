<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracker Challenge</title>
</head>
<body>

	<h3>Tracker Application</h3>

	<fieldset>

		<legend>
			<b>Visualization</b>
		</legend>

		<form method="GET" action="/TrackerChallenge/view-records">

			<input type="radio" name="radioValueCategory" value="my_itineraries" checked="checked" />
			<label>My itineraries</label><br> 
			<input type="radio" name="radioValueCategory" value="all_itineraries" /> 
			<label>All itineraries</label><br> 

			<input type="submit" value="VIEW" />

		</form>
		
	</fieldset>
	
	<a href="/TrackerChallenge/index">Back</a>
	
</body>
</html>