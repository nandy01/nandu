<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 <%@ page isELIgnored="false"%>
<title>prodinfo</title>
<head>
</head>
<body>
<jsp:include page="header.jsp" /> 

<script>
var val=${products};
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = val;
		
	});
</script>
<table>
<tr><td width="250px">
<div ng-app="myApp" ng-controller="myCtrl">
	
	<h1>{{list.name}}</h1>   
	    <h4>&#8377;{{list.price}}/-</h4>
		<h2>Product Details</h2>
		{{list.description}}
</div>  
 <br>
		
			 
 </td></tr> </table>   
<br>
<br>
 <%@ include file="footer.jsp" %>
			
</body>
</html>