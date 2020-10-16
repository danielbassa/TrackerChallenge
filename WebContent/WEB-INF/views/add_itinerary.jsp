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
		
			<legend><b>Add itinerary</b></legend>

			<form method="POST" action="/TrackerChallenge/add-itinerary">

				<label>Start point: </label>
				<input type="text" name="startPoint"/><br>
				<label>End point</label> 
				<input type="text" name="endPoint"/><br>
				<label>Start date time: </label>
				<input type="text" name="startDateTime"/><br>
				<label>End date time: </label>
				<input type="text" name="endDateTime"/><br>
				<label>Transportation: </label>
				<input type="text" name="transportationId"/><br>

				<input type="submit" value="ADD"/>
			
			</form>
		
		</fieldset>
		
		
	<a href="/TrackerChallenge/index">Back</a>

</body>
</html>