<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<%@include file="allcomponant/allcss.jsp"%>

</head>
<body>
	<%@include file="allcomponant/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header p-3 mb-2 bg-primary text-white">
						<h3 class="text-center">Registration</h3>
					</div>


					<%
						String regMsg = (String) session.getAttribute("reg-success");

						if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=regMsg%> Login<a href="login.jsp">Click Here</a></div>

					<%
					session.removeAttribute("reg-success");
						}
					%>

					<%
						String FailedMsg = (String) session.getAttribute("failed-msg");

						if (FailedMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=FailedMsg %></div>


					<%
					session.removeAttribute("failed-msg");

						}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="mb-3">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="mb-3">
								<label>Enter Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>
							<button class="btn btn-primary col-12 mx-auto" type="submit">Register</button>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<%@include file="allcomponant/footer.jsp"%>
</body>
</html>