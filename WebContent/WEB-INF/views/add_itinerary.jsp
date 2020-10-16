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
		
			<legend><b>Add itinerary</b></legend>

			<form method="POST" action="/TrackerChallenge/add-itinerary">

				<label>Start point: </label>
				<input type="text" name="startPoint"/><br>
				<label>End point</label> 
				<input type="text" name="endPoint"/><br>
				<label>Start date time: </label>
				<input type="datetime-local" name="startDateTime"/><br>
				<label>End date time: </label>
				<input type="datetime-local" name="endDateTime"/><br>
				<label>Transportation: </label>
				<!--  <input type="text" name="transportationId"/><br> -->
				<select name="transportationId">
					<c:forEach items="${transportations}" var="item">
						<option value="${item.id}">${item.transport}</option>
					</c:forEach>
				</select><br>

				<input type="submit" value="ADD"/>
			
			</form>
		
		</fieldset>
		
	<h4>${confirmation}</h4>
		
		
	<a href="/TrackerChallenge/index">Back</a>

</body>
</html>