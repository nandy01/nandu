<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
<title>SignUp</title>
</head>
<body>
<!-- Navbar -->
	<nav class="navbar navbar-inverse">

	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Welcome">Home</a></li>
			<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Bangles">Bangles</a></li>
          <li role="presentation" class="divider"></li>
          <li><a href="Necklace">Necklace</a></li>
           <li role="presentation" class="divider"></li>
          <li><a href="Earrings">Earring</a></li> 
          <li role="presentation class="divider"></li>
						<li><a href="categorylist">Categoriesinfo</a></li>
        </ul>
      </li>
        <li><a href="Contact Us"><span class="glyphicon glyphicon-map-marker">Contact Us</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a href="SignUp"> <span class="glyphicon glyphicon-user">Signup</span></a></li>
					<li><a href="index"> <span class="glyphicon glyphicon-log-in">Login</span></a></li>
				</ul>
				</div>
	

	</nav>

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up  <h4><font color="blue">It's free!</font></h4></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm floatlabel" placeholder="First Name" required="true">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name" required="true">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" required="true">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required="true">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password" required="true">
			    					</div>
			    				</div>
			    			</div>
			    			<div class="form-group">
     
     <div class="col-md-8 ">
       <label>
          <input type="radio" name="gender">
             Male
          </label>
       <label>
          <input type="radio" name="gender">
          Female
       </label>
     </div>
 </div>
			    			<script>
function myFunction() {
    var x = document.getElementById("myDate").value;
    document.getElementById("demo").innerHTML = x;
}
</script>
			    			<div class="form-group">
			    			<input type="date" id="myDate" value="yy-mm-dd"  class="form-control input-sm">
</div>
			    			 <div class="col-md-8">
        <div class="checkbox">
          
             
             <input type="checkbox">
             I agree to the Terms of Use<br>
        <a href="index">    Already Register? Login here</a>
         
        </div>
    </div>
 </div>
 <div class="form-group">
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>

</body>
</html>