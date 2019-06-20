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

<!--  

<label class="container"> Alcohol
  <input type="checkbox" name="Food_Allergies" value="Alcohol" <c:if test="${resname.contains('Alcohol')}">checked</c:if>>
  <span class="checkmark"></span>
</label>
<label class="container"> Almonds
  <input type="checkbox" name="Food_Allergies" value="Almonds">
  <span class="checkmark"></span>
</label>
<label class="container"> Avocado
  <input type="checkbox" name="Food_Allergies" value="Avocado">
  <span class="checkmark"></span>
</label>
<label class="container">Bacon
  <input type="checkbox" name="Food_Allergies" value="Bacon">
  <span class="checkmark"></span>
</label>
<label class="container">Banana
  <input type="checkbox" name="Food_Allergies" value="Banana">
  <span class="checkmark"></span>
</label>
<label class="container">Beef
  <input type="checkbox" name="Food_Allergies" value="Beef">
  <span class="checkmark"></span>
</label>
<label class="container">Brazil Nuts
  <input type="checkbox" name="Food_Allergies" value="Brazil Nuts">
  <span class="checkmark"></span>
</label>
<label class="container">Caffeine
  <input type="checkbox" name="Food_Allergies" value="Caffeine">
  <span class="checkmark"></span>
</label>
<label class="container">Cashews
  <input type="checkbox" name="Food_Allergies" value="Cashews">
  <span class="checkmark"></span>
</label>
<label class="container">Cheese
  <input type="checkbox" name="Food_Allergies" value="Cheese">
  <span class="checkmark"></span>
</label>
<label class="container">Chicken
  <input type="checkbox" name="Food_Allergies" value="Chicken">
  <span class="checkmark"></span>
</label>
<label class="container">Chocolate
  <input type="checkbox" name="Food_Allergies" value="Chocolate">
  <span class="checkmark"></span>
</label>
<label class="container">Citrus
  <input type="checkbox" name="Food_Allergies" value="Citrus">
  <span class="checkmark"></span>
</label>
<label class="container">Clams
  <input type="checkbox" name="Food_Allergies" value="Clams">
  <span class="checkmark"></span>
</label>
<label class="container">Cocoa
  <input type="checkbox" name="Food_Allergies" value="Cocoa">
  <span class="checkmark"></span>
</label>
<label class="container">Crab
  <input type="checkbox" name="Food_Allergies" value="Crab">
  <span class="checkmark"></span>
</label>
<label class="container">Crayfish
  <input type="checkbox" name="Food_Allergies" value="Crayfish">
  <span class="checkmark"></span>
</label>
<label class="container">Cream
  <input type="checkbox" name="Food_Allergies" value="Cream">
  <span class="checkmark"></span>
</label>
<label class="container">Dairy
  <input type="checkbox" name="Food_Allergies" value="Dairy">
  <span class="checkmark"></span>
</label>
<label class="container">Egg
  <input type="checkbox" name="Food_Allergies" value="Egg">
  <span class="checkmark"></span>
</label>
<label class="container">Eggs
  <input type="checkbox" name="Food_Allergies" value="Eggs">
  <span class="checkmark"></span>
</label>
<label class="container">Fish
  <input type="checkbox" name="Food_Allergies" value="Fish">
  <span class="checkmark"></span>
</label>
<label class="container">Flour
  <input type="checkbox" name="Food_Allergies" value="Flour">
  <span class="checkmark"></span>
</label>
<label class="container">Fructose
  <input type="checkbox" name="Food_Allergies" value="Fructose">
  <span class="checkmark"></span>
</label>
<label class="container">Gelatin
  <input type="checkbox" name="Food_Allergies" value="Gelatin">
  <span class="checkmark"></span>
</label>
<label class="container">Hazelnuts
  <input type="checkbox" name="Food_Allergies" value="Hazelnuts">
  <span class="checkmark"></span>
</label>
<label class="container">Honey
  <input type="checkbox" name="Food_Allergies" value="Honey">
  <span class="checkmark"></span>
</label>
<label class="container">Lamb
  <input type="checkbox" name="Food_Allergies" value="Lamb">
  <span class="checkmark"></span>
</label>
<label class="container">Legumes
  <input type="checkbox" name="Food_Allergies" value="Legumes">
  <span class="checkmark"></span>
</label>
<label class="container">Lemon
  <input type="checkbox" name="Food_Allergies" value="Lemon">
  <span class="checkmark"></span>
</label>
<label class="container">Lime
  <input type="checkbox" name="Food_Allergies" value="Lime">
  <span class="checkmark"></span>
</label>
<label class="container">Lobster
  <input type="checkbox" name="Food_Allergies" value="Lobster">
  <span class="checkmark"></span>
</label>
<label class="container">Macadamia Nuts
  <input type="checkbox" name="Food_Allergies" value="Macadamia Nuts">
  <span class="checkmark"></span>
</label>
<label class="container">Maple
  <input type="checkbox" name="Food_Allergies" value="Maple">
  <span class="checkmark"></span>
</label>
<label class="container">Marshmellow
  <input type="checkbox" name="Food_Allergies" value="Marshmellow">
  <span class="checkmark"></span>
</label>
<label class="container">Meat
  <input type="checkbox" name="Food_Allergies" value="Meat">
  <span class="checkmark"></span>
</label>
<label class="container">Milk
  <input type="checkbox" name="Food_Allergies" value="Milk">
  <span class="checkmark"></span>
</label>
<label class="container">Mussels
  <input type="checkbox" name="Food_Allergies" value="Mussels">
  <span class="checkmark"></span>
</label>
<label class="container">Nuts
  <input type="checkbox" name="Food_Allergies" value="Nuts">
  <span class="checkmark"></span>
</label>
<label class="container">Oranges
  <input type="checkbox" name="Food_Allergies" value="Oranges">
  <span class="checkmark"></span>
</label>
<label class="container">Oysters
  <input type="checkbox" name="Food_Allergies" value="Oysters">
  <span class="checkmark"></span>
</label>
<label class="container">Pecans
  <input type="checkbox" name="Food_Allergies" value="Pecans">
  <span class="checkmark"></span>
</label>
<label class="container">Pine Nuts
  <input type="checkbox" name="Food_Allergies" value="Pine Nuts">
  <span class="checkmark"></span>
</label>
<label class="container">Pork
  <input type="checkbox" name="Food_Allergies" value="Pork">
  <span class="checkmark"></span>
</label>
<label class="container">Red Dye
  <input type="checkbox" name="Food_Allergies" value="Red Dye">
  <span class="checkmark"></span>
</label>
<label class="container">Salt
  <input type="checkbox" name="Food_Allergies" value="Salt">
  <span class="checkmark"></span>
</label>
<label class="container">Sodium
  <input type="checkbox" name="Food_Allergies" value="Sodium">
  <span class="checkmark"></span>
</label>
<label class="container">Soy
  <input type="checkbox" name="Food_Allergies" value="Soy">
  <span class="checkmark"></span>
</label>
<label class="container">Soy Sauce
  <input type="checkbox" name="Food_Allergies" value="Soy Sauce">
  <span class="checkmark"></span>
</label>
<label class="container">Soybean
  <input type="checkbox" name="Food_Allergies" value="Soybean">
  <span class="checkmark"></span>
</label>
<label class="container">Steak
  <input type="checkbox" name="Food_Allergies" value="Steak">
  <span class="checkmark"></span>
</label>
<label class="container">Strawberry
  <input type="checkbox" name="Food_Allergies" value="Strawberry">
  <span class="checkmark"></span>
</label>
<label class="container">Sugar
  <input type="checkbox" name="Food_Allergies" value="Sugar">
  <span class="checkmark"></span>
</label>
<label class="container">Tea
  <input type="checkbox" name="Food_Allergies" value="Tea">
  <span class="checkmark"></span>
</label>
<label class="container">Tomatoes
  <input type="checkbox" name="Food_Allergies" value="Tomatoes">
  <span class="checkmark"></span>
</label>
<label class="container">Walnuts
  <input type="checkbox" name="Food_Allergies" value="Walnuts">
  <span class="checkmark"></span>
</label><label class="container">Wheat
  <input type="checkbox" name="Food_Allergies" value="Wheat">
  <span class="checkmark"></span>
</label>

-->

<input type="submit" value="Submit">
</form>
</body>
</html>
