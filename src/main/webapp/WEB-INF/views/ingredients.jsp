<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingredients</title>
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
	width:750px;
	padding: 1em;
	background: #ddd;
	border-bottom: 2px solid white;
}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">

</head>
<body style="font-family: 'Roboto Condensed', sans-serif;">


	<!-- This HTML code will allow users to input the barcode manually -->
	<div class="container" style="display:none">
		<h1>Manual Barcode Scanner</h1>

		<form name="barcode" action="/search" method="post">
			Input Barcode Code: <input type="text" name="barcode"
				value="${barcode }"> <input type="submit" value="Submit">
		</form>

		<p id="demo"></p>
	</div>


	<!-- This will activate the allergy alert box -->
	<script>
		function allergyAlert() {

			var r = `/recipeSearch?ingredient=${name}`
			var redlight = `${redlight}`
			var s = `scanner`
			if (redlight) {
				if (window
						.confirm('WARNING! This food item contians some of your selected allergens. Click Okay to scan again or click cancel to return home page')) {
					window.location.href = "/scanner"
				} else {
					window.location.href = "/"
				}

			} else {

				if (window
						.confirm('Thumbs Up! This food does not contain any of your selected allergens! Click OK to see a list of recipes for this item or CANCEL to return home.')) {
					window.location.href = (r);
				} else {
					window.location.href = "/"
				}
			}
		}
	</script>




	<h1 style="font-size: 5em">${brands}</h1>
	<h1 style="font-size: 5em">${name}</h1>
	<h1 style="color: red; font-size:4em;">Allergens: ${allergens}</h1>
	<button style="font-size:3em" onclick="allergyAlert()">Check Restrictions</button><br><br>
	<div class="container">
		<table class="table" style="text-align: center; font-size: 4em;">
			<tbody>
				<tr>
					<td>Ingredients</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<table class="table">
			<tbody>
				<c:forEach var="f" items="${list}">
					<tr>
						<td>${f.text}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>