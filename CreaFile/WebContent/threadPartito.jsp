<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EsercizioFile</title>

<link rel="stylesheet" href="index.css"/>
</head>
<body>
		<jsp:useBean id="crea" class="beans.ThreadFile"/> 
		Richiesta inviata, <a href="/CreaFile/creaFile.jsp">torna indietro e creane uno nuovo</a>
		
		<%
			crea.CreaFile(request.getParameterValues("nomeFile")[0]);
		%>
		
        
</body>
</html>