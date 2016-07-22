<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Earring</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="header.jsp" /> 
<div class="container">
		

		<div class="row">

			<div class="col-md-4">
				<center>
				<a href="productinfo?id=w3"class="thumbnail"> <img
						src="resource/image/c1.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
				
					<p>Tia Spangle</p>
					<p>Rs.20,000/-</p>
				</center>
			</div>
			<div class="col-md-4">
				<center>
					<a href="productinfo?id=w3"class="thumbnail"> <img
						src="resource/image/c3.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
					<p>Anny way</p>
					<p>Rs.10,000/-</p>
				</center>
			</div>
			


			<div class="col-md-4">
				<center>
					<a href="product1?id=w3"class="thumbnail"> <img
						src="resource/image/c6.jpg" alt="ring"
						style="width: 250px; height: 250px"></a>
					<p>Peacock Stud</p>
					<p>Rs.10,000/-</p>
				</center>
			</div>
			</div>
</div>
<jsp:include page="footer.jsp" /> 
</body>
</html>