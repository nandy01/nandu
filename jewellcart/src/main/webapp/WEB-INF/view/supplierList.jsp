<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>supplierList</title>

</head>
<script>
function myFunction() {
    var x;
    if (confirm("Are You Sure Want to Delete!") == true) {
        x = "You pressed OK!";
    } else {
        x = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = x;
}
</script>
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
						<li><a href="adminHome">Categoriesinfo</a></li>
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
<a href ="categorylist">Categories</a> | <a href="productlist">Products</a> | <a href ="supplierlist">Suppliers</a>  
	
	<center><h1><button type="button" class="btn btn-success">Suppliers Information</button></h1></center>
	

	<c:url var="addAction" value="/supplierlist/add"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:input path="address" required="true" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty supplier.name}">
						<input type="submit"
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" value="<spring:message text="Add Supplier"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>

	
	<p>GET ALL SUPPLIERS</p>

<div class="row">
			<div class="col-md-6">


				<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
							<th>Address</th>
						
							<th align="left">Edit</th>
		                    <th align="left">Delete</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${supplierList}" var="supplier" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${supplier.id}</td>
			<td>${supplier.name}</td>
			<td>${supplier.address}</td>
			
			<td><a href="<c:url value='supplierlist/edit/${supplier.id}' />">
			<button class="">&#9998 Edit</button></a></td>
			<td><a href="<c:url value='supplierlist/remove/${supplier.id}' />">
			<button onclick="myFunction()">Delete</button></a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>
	</div>
	
	
	
	
</body>
</html>