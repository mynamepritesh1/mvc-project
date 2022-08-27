
<%@page import="com.user.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa fa-book"
			aria-hidden="true"></i> ENotes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i class="fa fa-home"
						aria-hidden="true"></i> Home<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
						class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fa fa-address-book-o" aria-hidden="true"></i> Show Notes</a></li>
			</ul>
			<%
				UserDetails user = (UserDetails) session.getAttribute("UserD");

				if (user != null) {
			%>
			<form class="d-flex">
				<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0 me-2"
					data-bs-toggle="modal" data-bs-target="#exampleModal" type="submit"><i
					class="fa fa-user-circle-o" aria-hidden="true"></i> <%=user.getName()%></a>

				<a href="register.jsp" class="btn btn-light my-2 my-sm-0"
					type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i>
					Logout</a>
					
						<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="Container text-center">
							<i class="fa fa-user fa-3x"></i>
							<h5></h5>
							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td> <%=user.getId()  %></td>
									</tr>

									<tr>
										<th>Full Name</th>
										<td><%= user.getName() %></td>
									</tr>

									<tr>
										<th>Email Id</th>
										<td><%= user.getEmail() %></td>
									</tr>

								</tbody>
								
							</table>
							<div>
									<button type="button" class="btn btn-primary"
										data-bs-dismiss="modal">Close</button>
								</div>
						</div>
					</div>



				</div>

			</div>
		</div>
					



				<%
					} else {
				%>
			</form>
			<form class="d-flex">
				<a href="login.jsp" class="btn btn-light my-2 my-sm-0 me-2"
					type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
					Login</a> <a href="register.jsp" class="btn btn-light my-2 my-sm-0"
					type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i>
					Register</a>

				<%
					}
				%>

			</form>
		</div>

		</div>


</nav>


<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="changepassword.jsp">Change Password</a></li>