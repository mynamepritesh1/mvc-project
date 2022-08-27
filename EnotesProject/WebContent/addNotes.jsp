<%@page import="com.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	UserDetails user1 = (UserDetails) session.getAttribute("UserD");
	if (user1 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please login");

	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="allcomponant/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="allcomponant/navbar.jsp"%>
		<h1 class="text-center">ADD YOUR NOTES</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="mb-3">
							<%
								UserDetails us = (UserDetails) session.getAttribute("UserD");
								if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
								}
							%>
							
							<label for="exampleInputEmail1" class="form-label">Enter
								Title</label> <input type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter your title here" name="title"
								required="required">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter
								Content</label>
							<textarea rows="10" cols="" class="form-control"
								placeholder="Enter your notes here" name="content"
								required="required"></textarea>
						</div>
						<br>
						<div class="mb-3">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>



				</div>


			</div>
		</div>
	</div>
	<%@include file="allcomponant/footer.jsp"%>
</body>
</html>




