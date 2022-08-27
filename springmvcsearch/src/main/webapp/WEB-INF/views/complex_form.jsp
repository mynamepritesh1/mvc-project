<!-- error show taglib -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>Registration form</title>
</head>
<body class="" style="background: #e2e2e2;">

	<div class="form-row">
		<div class="form-group col-md-8 offset-md-2">
			<div class="card">

				<div class="card-body">
					<h3 class="text-center">Complex Form</h3>
					<!-- for error show -->
					<div class="alert alert-danger" role="alert">
						<form:errors path="student.*" />
					</div>


					<form action="handleform" method="post">
						<div class="form-group">
							<label for="inputEmail4">Your Name</label> <input type="text"
								class="form-control" id="inputEmail4" placeholder="Enter name"
								name="name">
						</div>

						<div class="form-group">
							<label for="inputPassword4">Your id</label> <input type="text"
								class="form-control" id="inputPassword4" placeholder="Enter id"
								name="id">
						</div>

						<div class="form-group">
							<label for="inputAddress">Your DOB</label> <input type="text"
								class="form-control" id="inputAddress" placeholder="dd/mm/yyyy"
								name="date">
						</div>
						<div class="form-group md-6">
							<label for="inputAddress2">Select Courses</label> <select
								class="form-control" id="inputAddress2" name="courses" multiple>

								<option>Java</option>
								<option>Python</option>
								<option>c++</option>
								<option>Django</option>
								<option>JavaScript</option>
							</select>
						</div>
						<div class="form-group">
							<span class="mr-3">Select Gender</span>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									value="male"><label class="form-check-label"
									for="inlinerqadio1">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									value="female"><label class="form-check-label"
									for="inlinerqadio2">Female</label>
							</div>
						</div>
						<div class="form-group">
							<label for="inputState">Select Type</label> <select
								id="inputState" class="form-control" name="type">
								<option value="oldstudent">Old Student</option>
								<option value="normalstudent">Normal Student...</option>
							</select>
						</div>
						<div class="card">
							<div Class="card-body">
								<p>Your Addres</p>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Street" name="address.Street" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter City" name="address.city" />
								</div>
							</div>
						</div>
						<br>
						<button type="submit" class="btn btn-primary text-center">Submit</button>
					</form>
				</div>

			</div>
		</div>

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

