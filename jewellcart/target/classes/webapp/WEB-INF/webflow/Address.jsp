<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Address</title>
</head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body>
<form class="form-horizontal" role="form" action="" method="POST">
  <div class="panel-body">
                    
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="
                            houseno">HouseNo.</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="houseno" placeholder="Username" required="">
                               </div>
                            </div>
                        </div>
                        <div class="panel-body">
                   
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="address1">address1</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address1" placeholder="Username" required="">
                               </div>
                            </div>
                        </div>
                         <div class="panel-body">
                   
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="address2">address2</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address2" placeholder="Username" required="">
                               </div>
                            </div>
                        </div>
                         <div class="panel-body">
                   
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="state">state</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="state" placeholder="Username" required="">
                               </div>
                            </div>
                        </div>
                         <div class="panel-body">
                   
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="city">city</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="city" placeholder="Username" required="">
                               </div>
                            </div>
                        </div>
                        
                        <input type="hidden" name="_flowExecutionKey"/>
                       
			<a href="${flowExecutionUrl}&_eventId_shippingAddProcessCompleted"><input type="submit" value="Next" class="btn btn-primary" 
			name="_eventId_shippingAddProcessCompleted"/></a>
			
                        
                        
                     
                        </form>
</body>
</html>