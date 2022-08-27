<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Pager</title>
</head>
<body>
<h1> Name is ${student.name }</h1>
<h1> Id is ${student.id }</h1>
<h1> Date is ${student.date }</h1>
<h1> Courses taking ${student.courses }</h1>
<h1> Gender is ${student.gender }</h1>
<h1> Type is ${student.type }</h1>
<h1> Address is ${student.address.street },${student.address.city }</h1>


</body>
</html>