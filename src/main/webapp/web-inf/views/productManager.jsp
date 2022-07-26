<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<!-- Our project just needs Font Awesome solid fas-->
<script defer src="${ctx}/res/icon/js/solid.js"></script>
<script defer src="${ctx}/res/icon/js/fontawesome.js"></script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/res/bootstrap/css/bootstrap.css">
<script type="text/javascript"
	src="${ctx}/res/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${ctx}/res/index.js"></script>

<title>Product Manager</title>
</head>

<body>
	<div class="container">
		<br>
		<h1 align="center">Product Management</h1>
		<div class="text-center">
			<a class="btn btn-outline-info btn-lg btn-block" href="${ctx}/"
				role="button"> <i class="fas fa-house-user"></i> Home Page
			</a>
		</div>
		<br>

		<!-- If there is a request for delete -->
		<c:if test="${delInform != null}">
			<h3>${delInform}</h3>
			<br>
		</c:if>

		<!-- If there is a request for searching and for case searching failed -->
		<c:if test="${searchInform != null}">
			<h3>${searchInform}</h3>
			<br>
		</c:if>

		<!-- add button and search box -->
		<div class="row justify-content-between">
			<div class="col-4">
				<a class="btn btn-outline-primary btn-md"
					href="${ctx}/show-add-form" role="button"> <i
					class="fas fa-user-plus"></i> Add new Product
				</a>
			</div>

			<!-- search box -->
			<div class="col-4">
				<form:form method="get" action="${ctx}/search">
					<div class="input-group">
						<button id="search-button" type="submit" class="btn btn-primary">
							<i class="fas fa-search"></i>
						</button>
						<input type="search" class="form-control rounded"
							name="name-contain" placeholder="product name .."
							aria-label="Search" aria-describedby="search-addon" />
					</div>
				</form:form>
			</div>
		</div>
		<br>

		
		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id product</th>
					<th scope="col">Name</th>
					<th scope="col">Image</th>
					<th scope="col">Price</th>
					<th scope="col">Category ID</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listProduct}" var="o">
					<tr>
						<th scope="row">${o.ID}</th>
						<td>${o.name}</td>
						<td><img style="width: 100px;
								  height: 100px;
								  object-fit: cover;" 
							alt="" src="${o.image}"></td>
						<td>${o.price}.000VND</td>
						<td>${o.cID}</td>
						<td><a href="${ctx}/show-update-form/${employee.id}"
							role="button" class="btn btn-outline-info"> <i
								class="fas fa-user-edit">update	</i></a> 
								<form:form method="post"
								action="${ctx}/delete/${employee.id}"
								onsubmit="return confirm('Do you want to delete this employee?')">
								<button type="submit" class="btn btn-outline-danger">
									<i class="fas fa-user-minus">delete</i>
								</button>
							</form:form></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>