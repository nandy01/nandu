<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 <%@ page isELIgnored="false"%>
 <script>
var val=${products};
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = val;
		
	});
</script>
</head>
<body>
<jsp:include page="header.jsp" /> 



<div ng-app="myApp" ng-controller="myCtrl">
	<div ng-repeat="l in list">
	
	<h1>{{l.name}}</h1>   
	    <h4>&#8377;{{l.price}}/-</h4>
		<h2>Product Details</h2>
		{{l.description}}
		<a href="productinfo?name={{l.name}}" method=get>GO</a>
		</div>
</div>  
		
			 

</body>
</html>