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

        <legend><b>Login</b></legend>

        <form method="POST" action="/TrackerChallenge/login-user">

            <label>Email: </label>
            <input type="text" name="email" /><br>
            <label>Password: </label>
            <input type="password" name="password" /><br>

            <input type="submit" value="LOGIN" />

        </form>

    </fieldset>
	
	<h4>${error}</h4>
	<h4>${confirmation}</h4>
    <a href="/TrackerChallenge/sign_in">Sign In</a><br>

</body>
</html>