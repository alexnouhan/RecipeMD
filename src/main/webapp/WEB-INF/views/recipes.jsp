<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap"
	rel="stylesheet">
<style>
table {
	border-collapse: collapse;
	border-radius: 1em;
	overflow: hidden;
	width: 750px;
	display: flex;
	justify-content: center;
	font-size: 40px;
}

th, td {
	width: 750px;
	padding: 1em;
	background: #ddd;
	border-bottom: 2px solid white;
	
}
a {
	color: black;

}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">

</head>
<body style="font-family: 'Roboto Condensed', sans-serif;">

	<form action="/recipeSearch" style="display:none">
		<input id="ingredient" name="ingredient"><input type="submit"
			label="Submit">
	</form>
	
	<div class="container">
		<table class="table" style="text-align: center; font-size: 4em;">
			<tbody>
				<tr>
					<td>Recipes</td>
				</tr>
			</tbody>
		</table>

		<table class="table" style="text-align: center; font-size: 2.7em;">
			<tbody>
				<c:forEach var="f" items="${list}">
					<tr>
						<td><a href="${f.href}">${f.title}</a></td>
						<td><a href="${f.href}"><img width=300 src="${f.thumbnail}"></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>