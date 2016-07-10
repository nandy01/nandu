<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminHome</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="Welcome">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="Earrings">Earrings</a></li>
						<li role="presentation class="divider"></li>
						<li><a href="Necklaces">Neckalace</a></li>
						<li role="presentation class="divider"></li>
						<li><a href="Rings and Bangles">Rings and Bangles</a></li>
						<li role="presentation class="divider"></li>
						<li><a href="categorylist">Categoriesinfo</a></li>
					</ul></li>

				<li><a href="Contact Us"><span
						class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="SignUp"><span class="glyphicon glyphicon-user"></span>
						SignUp</a></li>
				<li><a href="index"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<a href ="categorylist">Categories</a> | <a href="productlist">Products</a> | <a href ="supplierlist">Suppliers</a>
</body>
</html>