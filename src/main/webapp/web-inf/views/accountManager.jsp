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

<title>Account Manager</title>
</head>

<body>
	<div class="container">
		<br>
		<h1 align="center">Employee Management</h1>
		<div class="text-center">
			<a class="btn btn-outline-info btn-lg btn-block" href="${ctx}/"
				role="button"> <i class="fas fa-house-user"></i> Home Page
			</a>
		</div>
		<br>

		<!-- If there is a request for delete -->

			<!-- search box -->
			<div class="col-4">
				<form:form method="get" action="${ctx}/search">
					<div class="input-group">
						<button id="search-button" type="submit" class="btn btn-primary">
							<i class="fas fa-search"></i>
						</button>
						<input type="search" class="form-control rounded"
							name="name-contain" placeholder="Account name . . ."
							aria-label="Search" aria-describedby="search-addon" />
					</div>
				</form:form>
			</div>
		</div>
		<br>

		
		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Seller</th>
					<th scope="col">Admin</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listAccount}" var="o">
					<tr>
						<th scope="row">${o.uID}</th>
						<td>${o.user}</td>
						<td>${o.pass}</td>
						<td>${o.isSell}</td>
						<td>${o.isAdmin}</td>
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