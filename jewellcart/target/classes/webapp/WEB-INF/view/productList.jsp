<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>

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
						<li><a href="categorylist">Categoriesinfo</a></li>
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
	
	
	<center><h1><button type="button" class="btn btn-success">Add a Product</button></h1></center>

	<c:url var="addAction" value="/productlist/add"></c:url>

	<form:form action="${addAction}" commandName="product">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
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
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>

	
	<p>GET ALL Product</p>

<div class="row">
			<div class="col-md-6">


				<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
				            <th>Edit</th>
		                    <th>Delete</th>	
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${productList}" var="product" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${product.id}</td>
			<td>${product.name}</td>
		
			<td><a href="<c:url value='productlist/edit/${product.id}' />">
			<button class="">&#9998 Edit</button></a></td>
			<td><a href="<c:url value='productlist/remove/${product.id}' />">
			<button onclick="myFunction()">Delete</button></a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>
	</div>
	
	
	
	

</body>
</html>