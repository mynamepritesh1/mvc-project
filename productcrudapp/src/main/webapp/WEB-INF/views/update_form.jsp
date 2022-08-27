<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<div class="card">
				<div class="card-body">
				<h4 class="text-center mb-3">Change Product Details</h4>
				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				<input type ="hidden" value="${product.id }" name="id"/>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter product name here"
							name="name" value ="${product.name }">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Description</label> <textarea
							 class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter product description here"
							name="description" rows="5"> ${product.description }</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Product Price</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Enter product price here"
							name="price" value ="${product.price }">
					</div>
					<div class ="container text-center">
					<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger ">Back</a>
					<button type="submit" class="btn btn-primary">Update</button>
					</div>
				
					
				</form>
				
				
				</div>
				
				
				
				</div>




			</div>
		</div>
	</div>
</body>
</html>