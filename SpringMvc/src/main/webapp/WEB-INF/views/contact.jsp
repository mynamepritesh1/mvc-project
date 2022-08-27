<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	
	<div class="container-fluid mt-5 col-6 border border-primary">
	 <h3 class="text-center"><strong>Registration Form</strong></h3>
	 <!-- <p class ="text-center">${Desc }</p> -->
		<form action="processform" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Email address</strong></label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email"
					name="email">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"><strong>User Name</strong></label> <input type="text"
					class="form-control" id="userName" aria-describedby="emailHelp"
					placeholder="Enter Here" name="userName">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1"><strong>Password</strong></label> <input
					type="password" class="form-control" id="userPassword"
					aria-describedby="emailHelp" placeholder="Enter Here" name="password">
			</div>

			<button type="submit" class="btn btn-primary"><strong>Sign Up</strong></button>


		</form>
		<br>

	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>