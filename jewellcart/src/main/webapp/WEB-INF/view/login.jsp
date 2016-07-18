<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style>
	body
	{
	background-repeat:no-repeat
	}</style>
<title>login</title>
</head>
<body background=<c:url value="resource/image/bangle.jpg"/>>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong class="">Login</strong>
               

                </div>
                
                
  
  




  
  
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="isvaliduser" method="POST">
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="Username">Username</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username" placeholder="Username" required="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label  class="col-sm-3 control-label" for="password">password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="password" placeholder="password" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div class="checkbox">
                                    <label class="">
                                        <input type="checkbox" class="">Remember me</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success btn-sm">Sign in</button>
                                <button type="reset" class="btn btn-default btn-sm">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">Not Registered? <a href="SignUp.jsp" class="">Register here</a>
                </div>
                </div>
               
  </div>
  
  </div>
  
  </div>
  
  
  
  </body>
  </html>             
              




