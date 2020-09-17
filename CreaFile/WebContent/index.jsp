<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="index.css"/>
<title>EsercizioFile</title>
<body>

	<div id="login">LOGIN </div>
	<br><br>
	<div id="login2">
	<form action="logincheck.jsp" method="post">
		<label for="uname"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" name="uname" required>
		<br>
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="psw" required>
	    <br>
	    <br>
	    <button type="submit">Login</button>
	</form>
	</div>
</body>
</html>