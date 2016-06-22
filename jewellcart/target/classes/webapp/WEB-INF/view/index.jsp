<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<a href="Welcome"></a>
<form:form action="isvalidUser" method="POST">
Enter Username:<input type="text" name="name">
<br/>
Enter Password:<input type="text" name="password">
<a href="Welcome" input type="submit" ></a>
</form:form>


</body>
</html>
