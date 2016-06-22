<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
  $scope.records = ${cat};
  
});
</script>
<title>Product information</title>
</head>
<body>
Wecome in the page
<div ng-app="myApp" ng-controller="myCtrl">

<table>
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
  <tr ng-repeat="x in records">
    <td>{{x.id}}</td>
    <td>{{x.name}}</td>
    <td>{{x.description}}</td>
  </tr>
  </tbody>
</table>
</div>
</body>
</html>
