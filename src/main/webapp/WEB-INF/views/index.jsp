<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipe MD</title>
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
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
	text-align: center;
}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">
</head>
<body style="font-family: 'Roboto Condensed', sans-serif;">
	<!-- This will output the views from the controllers -->

		<table>
			<tr>
				<td><a href="/user_profile">User Profile</a></td>
			</tr>
		</table>


		<table>
			<tr>
				<td><a href="/scanner">Scanner</a></td>
			</tr>
		</table>




	<div>
		<a href="/openfoods">Ingredients</a><br> <a href="/recipes">Recipes</a><br>
	</div>
</body>
</html>