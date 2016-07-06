<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<body>

	
	<div class="container">
	<a href="getcat">Categories</a>
	<a href="getsup">Suppliers</a> 
	<a href="getpro">products</a>
<center><h1>List of available Product</h1></center>
<table width="50%">
<table class=table table-condensed>
<p>PRODUCT LIST</p>
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
						    <th><a href="<c:url value="Form1" />">ADD</a></th>
		                    
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${productList}" var="product" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${product.id}</td>
			<td>${product.name}</td>
			
			<td><a href="<c:url value='productlist/edit/${product.id}' />">Edit</a></td>
			<td><a href="<c:url value='productlist/remove/${product.id}' />">Delete</a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>
</div>

	
	</table>
	</table>
	
	
	</div>

</body>
</html>