<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pizzeria</title>
<link rel="stylesheet" href="index.css"/>
</head>
<body>
        <jsp:useBean id="snr" class="beans.ValidateUser"/> 

        <jsp:setProperty name="snr" property="uname"/> 
        <jsp:setProperty name="snr" property="psw"/> 
 
        <%if(snr.validate(snr.getUname(), snr.getPsw()))
        {
        	session = request.getSession();
        	session.setAttribute("username", snr.getUname());
        %> 
        <c:redirect url="/creaFile.jsp"/>
        <%}
        else
        {%> 
           <DIV CLASS="login">
           <br><H1>C'è stato un errore, riprova il <a href="index.jsp">login</a></H1><br/></DIV> 
        <%}%>
        <br>
        
        
</body>
</html>