<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<h1>This is home page</h1>
	<h1>Called by home page</h1>
	<%
		String name = (String) request.getAttribute("name");
		Integer id = (Integer) request.getAttribute("id");
		String city = (String) request.getAttribute("city");
		List<String> friends = (List<String>) request.getAttribute("f");
	%>
	<h1>
		Name is
		<%=name%></h1>
	<h1>
		Id is
		<%=id%></h1>
	<h1>
		City is
		<%=city%></h1>
	
	<%for (String s : friends){
			%>
	<h1><%= s%></h1>
	<%
	     }	
	%>








</body>
</html>