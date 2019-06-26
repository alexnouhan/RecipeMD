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
	width: 960px;
	font-size: 7em;

}

th, td {
	width: 960px;
	padding: 1em;
	background: #ddd;
	border-bottom: 2px solid white;
	text-align: center;
}
a {
   text-decoration: none;
   color: black;
}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">
</head>
<body style="font-family: 'Roboto Condensed', sans-serif;">
	<!-- This will output the views from the controllers -->
	
<img width=1000 src="Logo.png">	
	
<a href="/user_profile">
		<table>
			<tr>
				<td>User Profile</td>
			</tr>
		</table>
</a>
<a href="/scanner">
		<table>
			<tr>
				<td>Scanner</td>
			</tr>
		</table>
</a>



	<div>
		<a href="/openfoods">Ingredients</a><br> <a href="/recipes">Recipes</a><br>
	</div>
	
</body>
</html>