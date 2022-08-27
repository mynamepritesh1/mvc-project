<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	UserDetails user2 = (UserDetails) session.getAttribute("UserD");
	if (user2 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login");

	}
%><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="allcomponant/allcss.jsp"%>
</head>
<body>
<%@include file="allcomponant/navbar.jsp"%>
	<div class="container-fluid ">
		<div class="card py-5">
			<div class="card-body text-center">
				<img alt="" src="img/note.png" class="img-fluid ms-auto"
					style="max-width: 300px;">
				<h1>START TAKING YOUR NOTES</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
			</div>
		</div>

	</div>
	<%@include file="allcomponant/footer.jsp"%>

</body>
</html>



