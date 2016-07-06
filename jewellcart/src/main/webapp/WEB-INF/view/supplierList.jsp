<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>supplierList</title>

</head>
<body>

	
	<div class="container">
	<a href="getcat">Categories</a>
	<a href="getsup">Suppliers</a> 
	<a href="getpro">products</a>
<center><h1>List of available Suppliers</h1></center>
<table width="50%">
<table class=table table-condensed>
<p>SUPPLIER LIST</p>

<div class="row">
			<div class="col-md-6">
			<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
							<th>Address</th>
							<th>Description</th>
							<th>Edit</th>
							<th>Delete</th>
							<th><a href="<c:url value="Form2" />">ADD</a></th> 
		                    
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${supplierList}" var="supplier" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${supplier.id}</td>
			<td>${supplier.name}</td>
			<td>${supplier.address}</td>
			<td>${supplier.description}</td>
			<td><a href="<c:url value='supplierlist/edit/${supplier.id}' />">Edit</a></td>
			<td><a href="<c:url value='supplierlist/remove/${supplier.id}' />">Delete</a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>
</div>
	</div>
	
	
	
	</table>
</table>
</div>
</body>
</html>