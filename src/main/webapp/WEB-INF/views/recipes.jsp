<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	<form action="/recipeSearch"><input id="ingredient" name="ingredient"><input type="submit" label="Submit"></form>
	<div class="container">
		<table class="table" border="1">
			<thead>
				<tr>
					<td>Recipes</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${list}">
					<tr>
						<td>${f.title}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>