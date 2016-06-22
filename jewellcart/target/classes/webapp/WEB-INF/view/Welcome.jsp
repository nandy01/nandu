<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gorgeous Jewellery</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-inverse">

	<div class="container-fluid">
		
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="#"><a href="#">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="Earrings.jsp">Earrings</a></li>
					<li role="presentation" class="divider"></li>
					<li><a href="Necklace.jsp">Necklaces</a></li>
					<li role="presentation" class="divider"></li>
					<li><a href="Rings and Bangles.jsp">Rings and Bangles</a></li>
					<li role="presentation" class="divider"></li>
					<li><a href="prod">Product</a></li>
				</ul></li>
	</div>
	
	<center>
			<h1>Women Contriving Zone</h1>
		</center>
		<center>
			<p>Jewellery have the power to be this one little thing that can
				make you feel unique</p>
		</center>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="SignUp"> <span
				class="glyphicon glyphicon-user">Signup</span></a></li>
		<li><a href="index"> <span
				class="glyphicon glyphicon-log-in">Login</span></a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="Contact Us.jsp"><span
				class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
	</ul>
	</div>


	</nav>

	
		
	

	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<left>
					<img src="<c:url value="/resource/image/bangle19.jpg" />" alt="" width="400" height="300"></left>
					<div class="carousel-caption">
						<h3>Gorgeous</h3>
						<p>Look and Feel Beautiful</p>
					</div>
				</div>

				<div class="item">
					<right>
					<img src="<c:url value="/resource/image/aa.gif" />" alt="" width="400" height="300"></right>
					<div class="carousel-caption">
						<h3>Never Give Up</h3>
						<p>Bracelets</p>
					</div>

				</div>

				<div class="item">
					<left>
					<img src="<c:url value="/resource/image/2nbt27r.gif" />" width="400" height="300"></left>
					<div class="carousel-caption">
						<h3>Stunning</h3>
						<p>Pearl Earrings</p>
					</div>
				</div>

				<div class="item">
					<right>
					<img src="<c:url value="/resource/image/vv.gif" />" alt="" width="400" height="300"></right>
					<div class="carousel-caption">
						<h3>Necklace</h3>
						<p>For Princess</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>




</body>
</html>