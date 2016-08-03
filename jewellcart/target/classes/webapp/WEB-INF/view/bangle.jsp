<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bangle</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
 
</head>

<body>

<div class="container">
		

		<div class="row">

			<div class="col-md-4">
				<center>
					<a href="productinfo?name=joyricko" method=get class="thumbnail"> <img
						src="resource/image/joyricko.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
					<p>joy ricko</p>
					<p>Rs.20,000/-</p>
				</center>
			</div>
			<div class="col-md-4">
				<center>
					<a href="productinfo?name=Freda"class="thumbnail"> <img
						src="resource/image/Freda.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
					<p>Freda</p>
					<p>Rs.10,000/-</p>
				</center>
			</div>
			


			<div class="col-md-4">
				<center>
					<a href="product1?id=w3"class="thumbnail"> <img
						src="resource/image/rr.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
					<p>Sukkhi</p>
					<p>Rs.10,000/-</p>
				</center>
			</div>
			</div>
</div>
<jsp:include page="footer.jsp" /> 
</body>
</html>