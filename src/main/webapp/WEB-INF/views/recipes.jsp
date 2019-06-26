<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap"
	rel="stylesheet">
<style>
table {
	border-collapse: collapse;
	border-radius: .7em;
	overflow: hidden;
	width: 400px;
}

th, td {
	width: 100%;
	padding: .5em;
	background: #ddd;
	border-bottom: 2px solid white;
}

a {
	color: black;
	text-decoration: none;
}

.btn {
	width: 49%;
	height: 100px;
	font-size: 2em;
	background-color: #3daf57;
	border: none;
	padding: 16px, 32px;
	text-decoration: none;
	cursor: pointer;
	border-radius: 8px;
	color: white;
}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">

</head>
<body style="font-family: 'Roboto Condensed', sans-serif;">

	<form action="/recipeSearch" style="display: none">
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


		<c:forEach var="f" items="${list}">
			<a href="${f.href}">
				<table class="table" style="text-align: center; font-size: 2em;">
					<tbody>
						<tr>
							<td>${f.title}</td>
							<td style="padding-right: 50px"><img width=100 src="${f.thumbnail}"></td>
						</tr>
					</tbody>
				</table>
				</a>
		</c:forEach>

	</div>
	<p></p>
	<p></p>
	<p></p>
	<div class="footer">
		<button class="btn" onclick="window.location.href = '/scanner';">Scanner</button>
		<button class="btn" onclick="window.location.href = '/user_profile';">User
			Profile</button>
	</div>
</body>
</html>