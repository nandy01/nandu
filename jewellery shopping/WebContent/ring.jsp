<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>ring</title>
<style>
.img-hover img {
    -webkit-transition: all .10s ease; 
  	
}
.img-hover img:hover {
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transform:translateZ(0) scale(1.20); 
    -moz-transform:scale(1.20); 
    -ms-transform:scale(1.20); 
    -o-transform:translatZ(0) scale(1.20); 
    transform:translatZ(0) scale(1.20); 
}
  
  

}
</style>
</head>
<body>
	<!-- Navbar -->
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
				<li class="active"><a href="Welcome.jsp">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="Earrings.jsp">Earrings</a></li>
						<li role="presentation class="divider"></li>
						<li><a href="Necklaces.jsp">Neckalace</a></li>
						<li role="presentation class="divider"></li>
						<li><a href="Rings and Bangles.jsp">Rings and Bangles</a></li>
					</ul></li>

				<li><a href="Contact Us"><span
						class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
			</ul>


			<ul class="nav navbar-nav navbar-right">
				<li><a href="SignUp.jsp"> <span
						class="glyphicon glyphicon-user">Signup</span></a></li>
				<li><a href="login.jsp"> <span
						class="glyphicon glyphicon-log-in">Login</span></a></li>
			</ul>
		</div>
	</div>


	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
			 <div class=" img-hover">
				<img src="image/m.jpg" class="zoom">
			</div>
			</div>
			<div class="col-sm-8">
				<h1>White Gold and Diamond Stud ring</h1>

				<span>Be the first to review this item</span><br> <span
					class="a-text-strike">Price:54,751.00</span>
					<div class="row">
 <div class="col-md-8">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>
 </div>
 <div class="col-md-8">
  <span class="monospaced">Write a Review</span>
 </div>
</div><!-- end row -->
<a href="cart.jsp">
			<button type="button" class="btn btn-warning">ADD TO CART</button></a>
			<a href="login.jsp">
			<t1><button type="button" class="btn btn-success">BUY NOW</button></t1></a>
				<hr>
				Cash on Delivery eligible.<br> Sale: 46,559.00 + Delivery
				charges may apply Details<br> You Save:8,192.00 (15%)
				<hr>
				<li>These earrings are made from 18k
					gold Product length is 15.7 mm and width is 8.5 mm</li><li> The earrings
					have been adorned with real diamonds.</li><li> Diamond carat 0.29, color EF,
					very good stone cut, with VVS clarity Diamond has been verified by
					SGL/HKD and is set in 18 karat gold certified by BIS hallmark All
					diamonds are warranted to be conflict free BIS Hallmark is NOT a
					separate certificate.</li> <li>It is an inscription made on the product</li>
				<hr style="height:1px"/>
					<div class="row">
 <div class="col-md-6"> <table class="table table-striped">
                         <thead>
                         <tbody>
							<th colspan="2">jewellery information</th></tr>
						<tr>
							<td class="td1">Brand</td>
							<td class="td2">DiamondStone</td>
							</tr>
						
					</tbody>
					</thead>
				</div>
			</div>

		</div>
</body>
</html>