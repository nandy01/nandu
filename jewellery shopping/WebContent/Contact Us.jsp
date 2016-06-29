<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
	t1
	{
	padding-left:5em;
	}
	t2
	{
	padding-left:3em;}</style>

</head>

<body>

<!-- Navbar -->
	<nav class="navbar navbar-inverse">

	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Bangles.jsp">Earrings</a></li>
          <li role="presentation" class="divider"></li>
          <li><a href="Necklace.jsp">Necklaces</a></li>
           <li role="presentation" class="divider"></li>
          <li><a href="Earrings.jsp">Bangles and Rings</a></li> 
        </ul>
      </li>
        <li><a href="ContactUs.jsp"><span class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a href="SignUp.jsp"> <span class="glyphicon glyphicon-user">Signup</span></a></li>
					<li><a href="login.jsp"> <span class="glyphicon glyphicon-log-in">Login</span></a></li>
				</ul>
				</div>
	</nav>
	<div class="container">
<center>  <h1>Contact Us</h1></center><br><br><br>
  <table>
  <form class="form-inline" role="form">
  <div class="row">
    <div class="form-group"><div class="col-md-3">
    <label for="email"><t1>Email:</t1></label></div>
      <div class=col-md-6><input type="email" class="form-control" id="email" placeholder="Enter email" required>
   </div> </div></div><br>
   <div class="form-group"><div class="col-md-3">
 
     <label for="pwd"><t2>Password:</t2></label></div>
     <div class="col-md-6"> <input type="password" class="form-control" id="pwd" placeholder="Enter password" required>
   </div> </div><br><br>
    <div class="form-group"><div class="col-md-3">
  <label for="comment"><t2>Comment:</t2></label></div>
  <div class="col-md-6"><textarea class="form-control" rows="5" id="comment"></textarea></div>
</div><br><br><br>
<button type="button" class="btn btn-success">Send message</button>
</form>
</table>

</div>


	

</body>
</html>