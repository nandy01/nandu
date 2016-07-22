<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
			<sf:form modelAttribute="userDetails">
				
				<sf:label path="name"> HouseNo:</sf:label>${userDetails.houseno}
					<br />
				<br />
				<sf:label path="email">Address1:</sf:label>${userDetails.address1}
					<br />
				<br />
				<sf:label path="password">Address2 :</sf:label>${userDetails.address2}
					<br />
<br/>

				
				<sf:label path="mobile">state:</sf:label>${userDetails.state}
					<br />
				<br />
				<sf:label path="address">City :</sf:label>${userDetails.city}
					<br />
			
			
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>