<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!-- Navbar -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar"
		style="background-color:white ; box-shadow: 10px 10px 8px #888888; font-color:black">
		<div class="container">

			<!-- Brand -->
			<a class="navbar-brand waves-effect"
				href="https://mdbootstrap.com/docs/jquery/" target="_blank"> <strong
				class="blue-text">MDB</strong>
			</a>

			<!-- Collapse -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Links -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<!-- Left -->
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link waves-effect"
						href="${ctx}/">Home <span class="sr-only">(current)</span>
					</a></li>
					
					<c:if test="${sessionScope.acc.isAdmin==1 }">
					<li class="nav-item"><a class="nav-link waves-effect"
						href="${ctx}/accountController" > Account Manager
						</a></li></c:if>
					
					<c:if test="${sessionScope.acc.isSell==1 }">
					<li class="nav-item"><a class="nav-link waves-effect"
						href="${ctx}/productController" > Product Manager
						</a></li></c:if>
				</ul>

				<!-- Right -->
				<ul class="navbar-nav nav-flex-icons">
					<li class="nav-item" style="background-color:lightgreen ;border:solid 2px;border-radius:20%">
					<a class="nav-link waves-effect" > <span
							class="badge red z-depth-1 mr-1" style="background-color:red ;border:solid 1px;border-radius:50%"> 1 </span> <i
							class="fas fa-shopping-cart"></i> <span
							class="clearfix d-none d-sm-inline-block"> Cart </span>
					</a>
					</li>
					
					<c:if test="${sessionScope.acc!=null }">
					<li class="nav-item"><a
						href=""
						class="nav-link waves-effect" target="_blank">HELLO ${sessionScope.acc.user}
					</a></li>
					</c:if>
					<c:if test="${sessionScope.acc==null }">
					<li class="nav-item" ><a
						href="${ctx}/login"
						class="nav-link  waves-effect"
						style="border:solid 1px;border-radius:20%"> Login
					</a></li>
					</c:if>
					<c:if test="${sessionScope.acc!=null }">
					<li class="nav-item"  ><a
						href="${ctx}/login"
						class="nav-link  waves-effect"
						style="border:solid 1px;border-radius:20%">Logout
					</a></li>
					</c:if>
				</ul>

			</div>

		</div>
	</nav>
	<!-- Navbar -->

	<!--Carousel Wrapper-->
	<div id="carousel-example-1z" class="carousel slide carousel-fade pt-4"
		data-ride="carousel">

		<!--Indicators-->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-1z" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-1z" data-slide-to="1"></li>
			<li data-target="#carousel-example-1z" data-slide-to="2"></li>
		</ol>
		<!--/.Indicators-->

		<!--Slides-->
		<div class="carousel-inner" role="listbox">

			<!--First slide-->
			<div class="carousel-item active">
				<div class="view"
					style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg'); background-repeat: no-repeat; background-size: cover;">

					<!-- Mask & flexbox options-->
					<div
						class="mask rgba-black-strong d-flex justify-content-center align-items-center">

						<!-- Content -->
						<div class="text-center white-text mx-5 wow fadeIn">
							<h1 class="mb-4">
								<strong>Learn Bootstrap 4 with MDB</strong>
							</h1>

							<p>
								<strong>Best & free guide of responsive web design</strong>
							</p>

							<p class="mb-4 d-none d-md-block">
								<strong>The most comprehensive tutorial for the
									Bootstrap 4. Loved by over 500 000 users. Video and written
									versions available. Create your own, stunning website.</strong>
							</p>

							<a target="_blank"
								href="https://mdbootstrap.com/education/bootstrap/"
								class="btn btn-outline-white btn-lg">Start free tutorial <i
								class="fas fa-graduation-cap ml-2"></i>
							</a>
						</div>
						<!-- Content -->

					</div>
					<!-- Mask & flexbox options-->

				</div>
			</div>
			<!--/First slide-->

			<!--Second slide-->
			<div class="carousel-item">
				<div class="view"
					style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); background-repeat: no-repeat; background-size: cover;">

					<!-- Mask & flexbox options-->
					<div
						class="mask rgba-black-strong d-flex justify-content-center align-items-center">

						<!-- Content -->
						<div class="text-center white-text mx-5 wow fadeIn">
							<h1 class="mb-4">
								<strong>Learn Bootstrap 4 with MDB</strong>
							</h1>

							<p>
								<strong>Best & free guide of responsive web design</strong>
							</p>

							<p class="mb-4 d-none d-md-block">
								<strong>The most comprehensive tutorial for the
									Bootstrap 4. Loved by over 500 000 users. Video and written
									versions available. Create your own, stunning website.</strong>
							</p>

							<a target="_blank"
								href="https://mdbootstrap.com/education/bootstrap/"
								class="btn btn-outline-white btn-lg">Start free tutorial <i
								class="fas fa-graduation-cap ml-2"></i>
							</a>
						</div>
						<!-- Content -->

					</div>
					<!-- Mask & flexbox options-->

				</div>
			</div>
			<!--/Second slide-->

			<!--Third slide-->
			<div class="carousel-item">
				<div class="view"
					style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg'); background-repeat: no-repeat; background-size: cover;">

					<!-- Mask & flexbox options-->
					<div
						class="mask rgba-black-strong d-flex justify-content-center align-items-center">

						<!-- Content -->
						<div class="text-center white-text mx-5 wow fadeIn">
							<h1 class="mb-4">
								<strong>Learn Bootstrap 4 with MDB</strong>
							</h1>

							<p>
								<strong>Best & free guide of responsive web design</strong>
							</p>

							<p class="mb-4 d-none d-md-block">
								<strong>The most comprehensive tutorial for the
									Bootstrap 4. Loved by over 500 000 users. Video and written
									versions available. Create your own, stunning website.</strong>
							</p>

							<a target="_blank"
								href="https://mdbootstrap.com/education/bootstrap/"
								class="btn btn-outline-white btn-lg">Start free tutorial <i
								class="fas fa-graduation-cap ml-2"></i>
							</a>
						</div>
						<!-- Content -->

					</div>
					<!-- Mask & flexbox options-->

				</div>
			</div>
			<!--/Third slide-->

		</div>
		<!--/.Slides-->

		<!--Controls-->
		<a class="carousel-control-prev" href="#carousel-example-1z"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carousel-example-1z"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
		<!--/.Controls-->

	</div>
	<!--/.Carousel Wrapper-->

	<!--Main layout-->
	<main>
		<div class="container">

			<!--Navbar-->
			<nav
				class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5"
				style="background-color: black;">

				<!-- Navbar brand -->
				<span class="navbar-brand">Categories:</span>

				<!-- Collapse button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#basicExampleNav" aria-controls="basicExampleNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Collapsible content -->
				<div class="collapse navbar-collapse" id="basicExampleNav">

					<!-- Links -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="${ctx}/">All
								<span class="sr-only">(current)</span>
						</a></li>
						
						<c:forEach items="${listCate}" var="o">
							<li class="nav-item ${cID==o.cID ? "active":""}">
							<a class="nav-link" href="${ctx}/category/${o.cID}">${o.cName}</a>
							</li>
						</c:forEach>

					</ul>
					<!-- Links -->

					<form class="form-inline" action="${ctx}/search" method="" >
					
						<div class="md-form my-0">
							<input class="form-control mr-sm-2" type="text" name="search"
								placeholder="Search" aria-label="Search">
						</div>
						<button id="search-button" type="submit" class="btn btn-primary">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
				<!-- Collapsible content -->

			</nav>
			<!--/.Navbar-->