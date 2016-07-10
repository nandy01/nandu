<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CATEGORY LIST</title>

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
<a href ="categorylist">Categories</a> | <a href="productlist">Products</a> | <a href ="supplierlist">Suppliers</a>
	
	
	<h1>Add a Category</h1>

	<c:url var="addAction" value="/categorylist/add"></c:url>

	<form:form action="${addAction}" commandName="category">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
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
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" value="<spring:message text="Add Category"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>

	
	<p>GET ALL CATEGORIES</p>

<div class="row">
			<div class="col-md-6">


				<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th align="left">Edit</th>
		                    <th align="left">Delete</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${categoryList}" var="category" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${category.id}</td>
			<td>${category.name}</td>
			<td>${category.description}</td>
			<td><a href="<c:url value='categorylist/edit/${category.id}' />">Edit</a></td>
			<td><a href="<c:url value='categorylist/remove/${category.id}' />">
			<button onclick="myFunction()">Delete</button></a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>
	</div>
	
</body>
</html>