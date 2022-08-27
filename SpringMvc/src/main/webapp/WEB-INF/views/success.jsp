<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success Page</title>
</head>
<body>
<!-- this is the first thing that we don't need to create user class and simply bt using syso..
<h1> Welcome Mr.---${userName }</h1>
<h1> Your Email address is ---${email }</h1>
<h1> Your Password is ---${password }</h1>
 -->
 <h1> ${Header }</h1>
 <h1> ${Desc }</h1>
 <h1 style ="color:green"> ${msg }</h1>
 <hr>
<h1> Welcome Mr.---${user.userName }</h1>
<h1> Your Email address is ---${user.email }</h1>
<h1> Your Password is ---${user.password }</h1>
</body>
</html>