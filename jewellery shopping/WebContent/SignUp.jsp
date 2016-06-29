<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
    background-color: lightyellow;
}
body
</style>


</head>

<body>

 
<!-- Navbar -->
	<nav class="navbar navbar-inverse">

	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Welcome.jsp">Home</a></li>
			<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Bangles.jsp">Bangles</a></li>
          <li role="presentation" class="divider"></li>
          <li><a href="Necklace.jsp">Necklace</a></li>
           <li role="presentation" class="divider"></li>
          <li><a href="Earrings.jsp">Earring</a></li> 
        </ul>
      </li>
        <li><a href="Contact Us"><span class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a href="SignUp.jsp"> <span class="glyphicon glyphicon-user">Signup</span></a></li>
					<li><a href="login.jsp"> <span class="glyphicon glyphicon-log-in">Login</span></a></li>
				</ul>
				</div>
	

	</nav>


<div class="container">
  <div class="row">
  	<div class="col-md-6">
    
          <form class="form-horizontal" action="" method="POST">
          <fieldset>
            <div id="legend">
              <legend class="">Register!!!</legend>
            </div>
            <div class="control-group">
              <label class="control-label" for="username">Username</label>
              <div class="controls">
                <input type="text" id="username" name="username" placeholder="" class="form-control input-lg" required="">
                <p class="help-block">Username can contain any letters or numbers, without spaces</p>
              </div>
            </div>
         
            <div class="control-group">
              <label class="control-label" for="email">E-mail</label>
              <div class="controls">
                <input type="email" id="email" name="email" placeholder="" class="form-control input-lg" required="">
                <p class="help-block">Please provide your E-mail</p>
              </div>
            </div>
         
            <div class="control-group">
              <label class="control-label" for="password">Password</label>
              <div class="controls">
                <input type="password" id="password" name="password" placeholder="" class="form-control input-lg" required="">
                <p class="help-block">Password should be at least 6 characters</p>
              </div>
            </div>
         
            <div class="control-group">
              <label class="control-label" for="password_confirm">Password (Confirm)</label>
              <div class="controls">
                <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="form-control input-lg" required="">
                <p class="help-block">Please confirm password</p>
              </div>
            </div>
         
            <div class="control-group">
              <!-- Button -->
              <div class="controls">
                <button class="btn btn-success">Register</button>
              </div>
            </div>
          </fieldset>
        </form>
    
    </div> 
  </div>
</div>

</body>
</html>