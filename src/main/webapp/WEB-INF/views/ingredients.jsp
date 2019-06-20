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
		<form name = "barcode" form action="/search" method="post" onsubmit="allergyAlert()">
			Input Barcode Code:
			<input type="text" name="barcode" value="${barcode }">
			<input type="submit" value="Submit">		
		</form>
	</div>
	<p id="demo"></p>
	

	<!-- This will activate the allergy alert box -->
	<script>
		
		function allergyAlert() {
			
			var r = `recipeSearch?ingredient=${name}`
			var redlight = `${redlight}`
			
			if(redlight) {
				alert('WARNING! This food item contians some of your selected allergens.');
			} else {
			
			if(window.confirm('Thumbs Up! This food does not contain any of your selected allergens! Click OK to see a list of recipes for this item or CANCEL to return home.')){
				window.open(r);
			} else {
				window.open("/")
			}
		}
		}
			
/* 			var alertMessage = confirm("Warning, this recipe has an allergy that you're allergic to.");
			if(alertMessage == true) {
				/* document.write ("User wants to continue!"); */
/* 				var link = document.createElement('a');
				link.textContent = 'Recipes';
				link.href = '/recipes';
				return link;
			} else {
				/* document.write ("User does not want to continue!"); */
/* 				var str = "Index"
				var result = str.link("index");
				document.getElementById("demo").innerHTML = result;
				return result;
			}
 */			/* alert("Warning, this recipe has an allergy that you're allergic to.");} */
	</script>
	



 	<h1>${name}</h1>
 	<h3>Allergens: ${allergens}</h3>
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