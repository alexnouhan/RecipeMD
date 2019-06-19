<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingredients</title>
</head>
<body>
	<h1>Manual Barcode Scanner</h1>
	<div class="container">
		<form action="/search">
			Input Barcode Code:
			<input type="text" name="barcode">
			<input type="submit" value="Submit">
		</form>
	</div>

 	<h1>${name}</h1>
 	<h3>Allergens: ${allergens }</h3>
	<div class="container">
		<table class="table" border="1">
			<thead>
				<tr>
					<td>Ingredients</td>
				</tr>
			</thead>
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