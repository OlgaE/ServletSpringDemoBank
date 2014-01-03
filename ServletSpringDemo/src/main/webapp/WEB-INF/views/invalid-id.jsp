<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="${colorPreferences.background }"
	  text="${colorPreferences.foreground }">
	  
	  <table border="5" align="center">
	  	<tr><th class="title"> Spring Bank: Error</th></tr>
	  </table>

	<p />
	<h1 class="error">No customer with ID '${id }'.</h1>
</body>
</html>