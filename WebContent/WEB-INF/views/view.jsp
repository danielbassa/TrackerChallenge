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

			<input type="radio" name="radioValueCategory" value="user_itineraries" checked="checked" />
			<label>My itineraries</label><br> 
			<input type="radio" name="radioValueCategory" value="all_itineraries" /> 
			<label>All itineraries</label><br> 

			<input type="submit" value="VIEW" />

		</form>
		
	</fieldset>
	
	<a href="/TrackerChallenge/index">Back</a>
	
	<c:if test="${category == 'user_itineraries'}">
		<table style="width:100%; text-align:'right'">
			<tr>
				<th>Start point</th>
				<th>End point</th>
				<th>Start date time</th>
				<th>End date time</th>
				<th>Transportation</th>
			</tr>
			<c:forEach items="${records}" var="item">
				<tr>
					<td>${item.getStartPoint()}</td>
					<td>${item.getEndPoint()}</td>
					<td>${item.getStartDateTime()}</td>
					<td>${item.getEndDateTime()}</td>
					<td>${transportNominatives.get(item.getId())}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	
	<c:if test="${category == 'all_itineraries'}">
		<table style="width:100%; text-align:'right'">
			<tr>
				<th>User</th>
				<th>Start point</th>
				<th>End point</th>
				<th>Start date time</th>
				<th>End date time</th>
				<th>Transportation</th>
			</tr>
			<c:forEach items="${records}" var="item">
				<tr>
					<td>${userNominatives.get(item.getId())}</td>
					<td>${item.getStartPoint()}</td>
					<td>${item.getEndPoint()}</td>
					<td>${item.getStartDateTime()}</td>
					<td>${item.getEndDateTime()}</td>
					<td>${transportNominatives.get(item.getId())}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	
</body>
</html>