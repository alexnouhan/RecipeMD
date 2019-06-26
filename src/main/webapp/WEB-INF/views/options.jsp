<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>

<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
<style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 6em;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 10px;
  left: -45px;
  height: 80px;
  width: 80px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 26px;
  top: 10px;
  width: 20px;
  height: 40px;
  border: solid white;
  border-width: 0 12px 12px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

h1 {
  font-size:6.5em;
}

 input[type=text] {
   width:100%;
   height: 200px;
   border: 2px solid green;
   border-radius: 4px;
   font-size: 7em;
 }
 input[type=button], input[type=submit], input[type=reset] {
  background-color: #3daf57;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  font-size:6em;
  cursor: pointer;
  width:100%;
  height: 200px;
}
</style>
<link rel="stylesheet" type="text/css" href="ztylez.css">
</head>
<body style="font-family: 'Roboto Condensed', sans-serif; margin:7.5em;">

<form action="leave_user_profile" method="get">
<input type="submit" value="Home">
</form>
<form action="user_profile_submission" method="get">

<!--  
<h1>Medications</h1>
<label class="container">Antibiotics
<input type="checkbox" name="medications" value="Antibiotics" <c:if test="${fn:contains(categories, 'Antibiotics')}">checked</c:if>>
<span class="checkmark"></span>
</label>
<label class="container"> Oral Contraception
  <input type="checkbox" name="medications" value="Oral Contraception">
   <span class="checkmark"></span>
</label>
<label class="container">Insulin
  <input type="checkbox" name="medications" value="Insulin">
  <span class="checkmark"></span>
</label>
<label class="container">Statin
  <input type="checkbox" name="medications" value="Statin">
  <span class="checkmark"></span>
</label>
<label class="container">Acetaminophen
  <input type="checkbox" name="medications" value="Acetaminophen">
  <span class="checkmark"></span>
</label>
<label class="container">Erectile Dysfunction
  <input type="checkbox" name="medications" value="Erectile Dysfunction">
  <span class="checkmark"></span>
</label>
<label class="container">Methylphenidate
  <input type="checkbox" name="medications" value="Methylphenidate">
  <span class="checkmark"></span>
</label>
<label class="container">Warfarin
  <input type="checkbox" name="medications" value="Warfarin">
  <span class="checkmark"></span>
</label>
<label class="container">Celiprolo
  <input type="checkbox" name="medications" value="Celiprolo">
  <span class="checkmark"></span>
</label>
<label class="container">CA2 Channel
  <input type="checkbox" name="medications" value="CA2 Channel">
  <span class="checkmark"></span>
</label>
<label class="container">NSAIDS
  <input type="checkbox" name="medications" value="NSAIDS">
  <span class="checkmark"></span>
</label>
<label class="container">Mercaptopurine
  <input type="checkbox" name="medications" value="Mercaptopurine">
  <span class="checkmark"></span>
</label>
<label class="container">Tamoxifen
  <input type="checkbox" name="medications" value="Tamoxifen">
  <span class="checkmark"></span>
</label>
<label class="container">Levothyroxine
  <input type="checkbox" name="medications" value="Levothyroxine">
  <span class="checkmark"></span>
</label> 



<h1>Diet Options</h1>
<label class="container"> Ketogentic
  <input type="checkbox" name="Diet_Options" value="Ketogentic">
  <span class="checkmark"></span>
</label>
<label class="container"> Whole 30
  <input type="checkbox" name="Diet_Options" value="Ketogentic">
  <span class="checkmark"></span>
</label>
<label class="container">Paleolithic
  <input type="checkbox" name="Diet_Options" value="Paleolithic">
  <span class="checkmark"></span>
</label>
<label class="container">Vegan
  <input type="checkbox" name="Diet_Options" value="Vegan">
  <span class="checkmark"></span>
</label>
<label class="container">Vegetarian
  <input type="checkbox" name="Diet_Options" value="Vegetarian">
  <span class="checkmark"></span>
</label>
<label class="container">Pescatarian
  <input type="checkbox" name="Diet_Options" value="Pescatarian">
  <span class="checkmark"></span>
</label>
<label class="container">Lacto-Vegetarian
  <input type="checkbox" name="Diet_Options" value="Lacto-Vegetarian">
  <span class="checkmark"></span>
</label> 


<h1>Religion Options</h1>
<label class="container"> Judaism
  <input type="checkbox" name="Religion_Options" value="Judaism">
  <span class="checkmark"></span>
</label>
<label class="container"> Islam
  <input type="checkbox" name="Religion_Options" value="Islam">
  <span class="checkmark"></span>
</label>
<label class="container">Hinduism
  <input type="checkbox" name="Religion_Options" value="Hinduism">
  <span class="checkmark"></span>
</label>
<label class="container">Buddhism
  <input type="checkbox" name="Religion_Options" value="Buddhism">
  <span class="checkmark"></span>
</label>
<label class="container">Mormonism
  <input type="checkbox" name="Religion_Options" value="Mormonism">
  <span class="checkmark"></span>
</label>
<label class="container">Seventh-Day Adventist
  <input type="checkbox" name="Religion_Options" value="Seventh-Day Adventist">
  <span class="checkmark"></span>
</label>

-->



<h1>Food Allergies</h1>

<c:forEach var="i" items="${allAllergies }">

<label class="container"> ${i }
  <input type="checkbox" name="Food_Allergies" value="${i }" <c:if test="${fn:contains(res, i)}">checked</c:if>>
  <span class="checkmark"></span>
</label>

</c:forEach>
<h1>Custom Allergies</h1>

<c:forEach var="i" items="${customAllergies }">

<label class="container"> ${i }
  <input type="checkbox" name="Custom_Allergies" value="${i }" checked>
  <span class="checkmark"></span>
</label>

</c:forEach>

<input type= "text" name="Custom_Allergies">
<input type="submit" value="Submit">
</form>



</body>
</html>
