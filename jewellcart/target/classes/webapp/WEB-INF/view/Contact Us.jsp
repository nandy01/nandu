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
</head>
<style>

   body{
 

 
 /* Safari 4-5, Chrome 1-9 */
    background: -webkit-gradient(radial, center center, 0, center center, 460, from(#1a82f7), to(#2F2727));

 
 
}

.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
label.label-floatlabel {
    font-weight: bold;
    color: #46b8da;
    font-size: 11px;
}



</style>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Welcome">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Earrings">Earrings</a></li>
            <li role="presentation class="divider"></li>
            <li><a href="Necklaces">Neckalace</a></li>
            <li role="presentation class="divider"></li>
            <li><a href="Rings and Bangles">Rings and Bangles</a></li>
            <li role="presentation class="divider"></li>
            <li><a href="adminHome">Categoriesinfo</a></li>
          </ul>
        </li>
        
        <li><a href="Contact Us"><span
				class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="SignUp"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
        <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        	<div class="panel-body">
        	<div class="panel-heading">
			    		<h3 class="panel-title"><font color="blue">Contact US</font>  </h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    		
			    		<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" required="true">
			    			</div></form>
			    			<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required="true">
			    					</div>
			    					
			    					<div class="form-group">
  <label for="comment"><t2>Comment:</t2></label></div>
  <div class=""><textarea class="form-control" rows="7" id="comment"></textarea></div><br>
  <div class="form-group">
			    			<a href="emailForm"><input type="submit" value="Send Message" class="btn btn-info btn-block"></a>
			    		
			    		
			    	</div>
</div>
</div>

</div>
</div>
</div>
</div>
</body>
</html>