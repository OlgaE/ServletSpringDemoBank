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
		<tr><th class="title"> Spring Bank: Your balance </th></tr>
	</table>
	<p/>
	<ul>
		<li>ID: ${customer.customerId }</li>
		<li>First name: ${customer.firstName }</li>
		<li>Last name: ${customer.lastName }</li>
		<li>Balance: ${customer.formattedBalance }</li>
	</ul>
	<br>
	<%@ include file="/WEB-INF/views/date.jsp" %>
</body>
</html>