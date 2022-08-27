<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/Enotes.jpg");
	width: 100%;
	height: 80vh;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="allcomponant/allcss.jsp"%>

</head>
<body>
	<%@include file="allcomponant/navbar.jsp"%>
	
	
	<div class="container-fluid back-img">
		<div style ="text-align: center">
			<h1 class ="text-white"><i class="fa fa-book" aria-hidden="true"></i>
			E Notes-Save Your Notes</h1>
			<a href="login.jsp" class="btn btn-light my-2 my-sm-0 me-2"
				type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
				Login</a> <a href="register.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i>
				Register</a>

		</div>
	</div>

	<%@include file="allcomponant/footer.jsp"%>

</body>
</html>