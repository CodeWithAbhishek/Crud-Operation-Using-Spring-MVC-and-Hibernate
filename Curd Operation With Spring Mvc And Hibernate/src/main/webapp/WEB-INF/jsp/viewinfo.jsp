<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h1>InfoData</h1>
		<table border="5" width="60%" cellpadding="2">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Last Name</th>
				<th>Phone Number</th>
				<th>email</th>
				<th>Action</th>
			</tr>
			<c:forEach var="infomodel" items="${viewinfo}">
				<tr>
					<td>${infomodel.id}</td>
					<td>${infomodel.name}</td>
					<td>${infomodel.lname}</td>
					<td>${infomodel.ph}</td>
					<td>${infomodel.email}</td>

					<td><a href="deleteinfo/${infomodel.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>



</body>
</html>