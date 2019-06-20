<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>

<html>
<head>
<style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
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
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
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
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
</head>
<body>
<form action="leave_user_profile" method="get">
<input type="submit" value="Home">
</form>
<form action="user_profile_submission" method="get">
<!--  
<h1>Medications</h1>
<label class="container">Antibiotics
<input type="checkbox" name="medications" value="Antibiotics">
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
<label class="container">Rastafarianism
  <input type="checkbox" name="Religion_Options" value="Rastafarianism">
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

<input type= "text" name = "Custom_Allergies">

<input type="submit" value="Submit">
</form>


</body>
</html>
