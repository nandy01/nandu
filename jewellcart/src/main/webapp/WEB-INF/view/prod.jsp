<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.records = $
		{
			cat
		}
		;

	});
	
	
</script>
<title>Category information</title>
</head>
<body>
<div class="container">
	<a href="getcat">Categories</a>
	<a href="getsup">Suppliers</a> 
	<a href="getpro">products</a>



<center><h1>List of available categories</h1></center>
<p>CATEGORY LIST</p>

<table width="50%">
<table class=table table-condensed>
	<tr>
	    <th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Description</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		<th><a href="<c:url value="Form" />">ADD</a></th>
		
		
	</tr>
	<c:forEach items="${categoryList}" var="category" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${category.id}</td>
			<td>${category.name}</td>
			<td>${category.description}</td>
		    <td><a href="<c:url value='category/edit/${category.id}' />">EDIT</a></td>
		    <td><a href="<c:url value='category/remove/${category.id}' />">DELETE</a></td>
		    								


							
						
						
			
		</tr>
	
	</c:forEach>
</table>
	</table>



	</div>
</body>
</html>
