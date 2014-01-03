<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Input form</title>
</head>
<body bgcolor="${colorPreferences.background }"
	  text="${colorPreferences.foreground }">
	  
	  <form action="get-customer" method="post">
	  	ID: <input type="text" name="cust-id" /> <br>
	  	Password: <input type="password" name="cust-password" /> <br>
	  	Foreground color: <input type="text" name="fg" value="${colorPreferences.foreground }"/> <br>
	  	Background color: <input type="text" name="bg" value="${colorPreferences.background }"/> <br>
	  	
	  	<input type="submit" value="Show balance" />
	  </form>
	
</body>
</html>