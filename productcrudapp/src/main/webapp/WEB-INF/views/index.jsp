<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>
<%@include file="./base.jsp"%>
</head>
<body>

</body>
<div class="container mt-3">
	<div class="card">
		<div class=" card-body col-md-12">
			<h2 class="text-center">Welcome to Product App</h2>
			<table class="table table-striped table-dark">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Product Name</th>
						<th scope="col">Description</th>
						<th scope="col">price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach items ="${product }" var="p">
					<tr>
						<th scope="row">${p.id }</th>
						<td>${p.name }</td>
						<td>${p.description }</td>
						<td class="font-weight-bold"> &#8377; ${p.price }</td>
						<td>
						<a href="delete/${p.id }"><i class="fas fa-trash text-danger"></i></a>
						<a href="update/${p.id }"><i class="fas fa-edit text-primary"></i></a>
						</td>
					</tr>
					</c:forEach>
					
				</tbody>
			</table>
			<div class="container text-center">
			<a href="add_product" class="btn btn-primary">Add Product</a>
			</div>

		</div>
	</div>
</div>


</html>
