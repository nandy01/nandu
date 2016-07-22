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

<body  background=<c:url value="resource/image/dia_carat.jpg"/>>
<jsp:include page="header.jsp" />
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