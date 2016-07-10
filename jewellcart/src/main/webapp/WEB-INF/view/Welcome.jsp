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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
input[type=text] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	width: 50%;
}

t1 {
	padding-left: 1em;
}
</style>


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
	<center>
		<form>
			<input type="text" name="search" placeholder="Search..">
		</form>
	</center>


	<div class="jumbotron" style="color: #FF00FF">
		<center>
			<h1>Women Contriving Zone</h1>
		</center>
		<center>
			<p>Jewellery have the power to be this one little thing that can
				make you feel unique</p>
		</center>


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
						<left> <img
							src=<c:url value="/resource/image/bangle19.jpg"/> alt=""
							width="400" height="300"></left>
						<div class="carousel-caption">
							<h3>Gorgeous</h3>
							<p>Look and Feel Beautiful</p>
						</div>
					</div>

					<div class="item">
						<right> <img src=<c:url value="/resource/image/aa.gif"/>
							alt="" width="400" height="300"></right>
						<div class="carousel-caption">
							<h3>Never Give Up</h3>
							<p>Bracelets</p>
						</div>

					</div>

					<div class="item">
						<left> <img
							src=<c:url value="/resource/image/2nbt27r.gif"/> alt=""
							width="400" height="300"></left>
						<div class="carousel-caption">
							<h3>Stunning</h3>
							<p>Pearl Earrings</p>
						</div>
					</div>

					<div class="item">
						<right> <img src=<c:url value="/resource/image/vv.gif"/>
							alt="" width="400" height="300"></right>
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
	</div>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<strong>HELP</strong>
				<p>Shipping</p>
				<hr>
				<p>FAQ</p>
				<hr>
				<p>Payments</p>

			</div>
			<div class="col-sm-4">
				<strong>FASHION WORLD</strong>
				<p>Contact Us</p>
				<hr>
				<p>About US</p>

			</div>
			<div class="col-sm-4">
				<strong>MISC</strong>
				<p>Gift Cards</p>
				<hr>
				<p>Vouchers</p>

			</div>



		</div>
	</div>


	<hr>
	<center><p>&copy; 2016 WomenContrivingZone.com</p></center>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h3>
					<span class="glyphicon  glyphicon-map-marker	"></span> <span
						class="text"> TRACK YOUR ORDER</span>
				</h3>
			</div>
			<div class="col-md-4">
				<h3>


					<i class="glyphicon  glyphicon-refresh"></i> <span class="text">FREE
						AND EASY RETURNS </span>
					</t1>
				</h3>
			</div>

			<div class="col-md-4">
				<h3>
					<span class="glyphicon glyphicon-remove-circle"></span> <span
						class="text">ONLINE CANCELLATION </span>
				</h3>
			</div>
		</div>
		<hr>

		<h6>
			<b style="color: #C0C0C0;">Buy Diamond Jewellery Online At Women
				Contiving Zone.com</b><br>
			<p style="color: #C0C0C0;">


				Diamond jewellery is a popular form of jewellery. It is very much
				appreciated for its brilliance, style and meaning. Earlier,
				purchasing a diamond was only possible for the rich and the noble.
				But with its rising popularity the society became accustomed to it.
				For most, it has become an overwhelming experience to purchase
				diamond jewellery. Owning a piece of diamond jewellery has become a
				way of reinventing personal style. <br>While buying diamond
				jewellery, it is very important to understand the stone\'s quality
				characteristics. These characteristics influence the appearance and
				quality of the jewellery. Learning about the 4 C\'s of diamond will
				be helpful in selecting a beautiful piece. These are cut, colour,
				clarity and carat. The cut determines the brilliance of the stone.
				If the cut is perfect, there will be more sparkle for the jewellery.
				Being colourless is the highest quality grade regarding the colour
				of a diamond. If the diamond is white, it is considered as of
				supreme quality. Clarity defines the number of imperfections on the
				stone\'s surface. Few or no imperfections are regarded as the
				highest grade of clarity. Carat is the term which denotes the weight
				of the stone. A bigger stone will be of higher carat. These 4 keys
				which assess the value of diamond should be considered as an
				evaluation for the jewellery also. <br>After understanding
				about the stone, one can move to the jewellery part. Diamond
				jewellery is available in various forms to suit different occasions.
				A diamond rings or wedding band is considered as part of bridal or
				wedding jewellery. A pendant or bracelet can add sparkle to your
				personality on a daily basis. A necklace or earrings can be worn on
				special occasions and it is also an excellent piece of gift item.
				While buying diamond jewellery one should ensure that the piece can
				be worn as you intend and that it won\'t mismatch the situation. <br>The
				various styles of diamond jewellery available will also affect your
				purchase. After deciding on the jewellery type, you should determine
				on the style that you would prefer. Always pick a style without
				forgetting your jewellery preference. Evaluate the piece on the
				basis of the type you already have, its wardrobe compatibility and
				how it can enhance your personality. For example, be careful not to
				pick up bridal jewellery as a party wear. Choose pendants and
				earrings that you can flaunt in a gathering and not the heavy pieces
				which are meant for brides. Just wish for something and we will
				deliver.
			</p>

			<b style="color: #C0C0C0;">Latest Collections in Diamond
				jewellery </b>
			<p style="color: #C0C0C0;">
				The size of the jewellery is also associated with making a smart
				purchase decision. All forms of jewellery should be bought after
				considering the size. Or else it won\'t serve the true purpose and
				would be a waste of your hard earned money. Rings should be selected
				according to exact measurement or it can cause swelling of the
				fingers or can also get lost if it is large for your fingers.
				Bracelets require the diameter of the wrist and necklaces are mostly
				selected with a size which can be altered if required. <br>Purchase
				diamond jewellery online through WCZ. You can select your favourite
				piece according to your preferences in style and quality
				requirements. Make payments through safe and secure online
				transactions and shop from your home. The online retailer also
				avails return and replacement policies for a convenient shopping.
			</p>
	</div>
</body>
</html>