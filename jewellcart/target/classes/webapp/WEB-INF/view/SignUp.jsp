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
	
<title>SignUp</title>
<style>
  .error {
        color: red; font-weight: bold;
    }
    </style>

</head>
<body background=<c:url value="resource/image/dia_carat.jpg"/>>

	<jsp:include page="header.jsp" /> 
	<form:form action="loginto" commandName="userForm">




		<div class="container">
			<div class="row centered-form">
				<div
					class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								Please sign up
								<h4>
									<font color="blue">It's free!</font>
								</h4>
							</h3>
						</div>
						<div class="panel-body">

							<div class="form-group">

								<div class="form-group">
									<input type="text" name="username" id="username"
										class="form-control input-sm floatlabel"
										placeholder="User Name" required="true">
										<form:errors path="username" cssClass="error"/>
								</div>
							</div>

						</div>
                         <div class="panel-body">
                          <div class="form-group">
							<input type="email" name="email" id="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
								class="form-control input-sm" placeholder="Email Address" required="true"
								  >
								  <form:errors path="email" cssClass="error"/>
								  
						</div>
						</div>
						 <div class="panel-body">
                          <div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-sm" placeholder="Password"
								required="true">
								<form:errors path="password" cssClass="error"/>
								
						</div>
						</div>
						 <div class="panel-body">
                          <div class="group">
							<input type="text" name="mobile" id="mobile" min="1" max="10"
								class="form-control input-sm" placeholder="mobile" required="true">
								<form:errors path="mobile" cssClass="error"/>
								
						</div>
						</div>
						
						<div class="panel-body">
	<div class="form-group">
				<a href="Welcome"><input type="submit"  value="Register"
					class="btn btn-info btn-block"></a>

</div>
			</div>
	
	</div>
	</div>
	</div>
	</div>
	
	
	</form:form>
<jsp:include page="footer.jsp" /> 

</body>
</html>