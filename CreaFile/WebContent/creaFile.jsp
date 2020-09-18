<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EsercizioFile</title>
<link rel="stylesheet" href="index.css"/>
</head>
<body> 
		<div id="login">
        <h1>Benvenuto!</h1>
        <h3>Crea il tuo file</h3><br/> 
       	<br><br>
	  	</div>
        
        
        <form action="threadPartito.jsp" method="get">
        
        <input type="text" name="nomeFile" id="nomeFile"/>
        <br><br>
       	<button type="submit">CREA!</button>
       </form>

</body>
</html>