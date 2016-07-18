<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SignUp</title>
<meta charset="utf-8">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 

 background-repeat:no-repeat
 
   
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
<body background=<c:url value="resource/image/dia_carat.jpg"/>>

<jsp:include page="header.jsp" />  
	
                        <form:form action="adduser" method="POST" >
	

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up  <h4><font color="blue">It's free!</font></h4></h3>
			 			</div>
			 			<div class="panel-body">
			    		
			    			<div class="row">
			    				
			    					<div class="form-group">
			                <input type="text" name="username" id="username" class="form-control input-sm floatlabel" placeholder="First Name" required="true">
			    					</div>
			    				</div>
			    				
			    			</div>
			    			<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
			    			

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" required="true">
			    			</div>
			    			<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
			    			

			    			<div class="row">
			    			
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required="true">
			    					</div>
			    				</div>
			    				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
			    				
			    				<div class="form-group">
			    						<input type="text" name="mobile" id="mobile" class="form-control input-sm" placeholder="Mobile" required="true">
			    					</div>
			    				
			    					<div class="form-group">
			    						<input type="text" name="address" id="address" class="form-control input-sm" placeholder="Address" required="true">
			    					</div>
			    				</div>
			    			</div>
			    			<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
			    			
			    			<div class="form-group">
     
     <div class="col-md-8 ">
       <label>
          <input type="radio" name="gender" value="M">
             Male
          </label>
       <label>
          <input type="radio" name="gender" value="F">
          Female
       </label>
     </div>
 </div>
 <!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
 
			    			<script>
function myFunction() {
    var x = document.getElementById("myDate").value;
    document.getElementById("demo").innerHTML = x;
}
</script>
			    			<div class="form-group">
			    			<input type="date" id="myDate" value="yy-mm-dd" name="dob" class="form-control input-sm" required="true">
</div>
			    			 <div class="col-md-8">
        <div class="checkbox">
          
             
             <input type="checkbox">
             I agree to the Terms of Use<br>
        <a href="index">    Already Register? Login here</a>
         
        </div>
    </div>
 </div>
 <c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br>
 <div class="form-group">
			    			<input type="submit" name="_eventId_submit" value="Register" class="btn btn-info btn-block">
			    		
			    		
			    	</div>
			    	
			    	
	    		</div>
	    		
	    		
 
</form:form>
</body>
</html>