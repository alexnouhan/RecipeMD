<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
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
<body>

<h1>Medications</h1>
<label class="container"> Antibiotics
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Oral Contraception
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Insulin
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Statin
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Acetaminophen
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Erectile Dysfunction
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Methylphenidate
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Warfarin
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Celiprolo
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">CA2 Channel
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">NSAIDS
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Mercaptopurine
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Tamoxifen
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Levothyroxine
  <input type="checkbox">
  <span class="checkmark"></span>
</label>  <input type="submit" value="Submit">

<h1>Diet Options</h1>
<label class="container"> Ketogentic
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Whole 30
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Paleolithic
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Vegan
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Vegetarian
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Pescatarian
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Lacto-Vegetarian
  <input type="checkbox">
  <span class="checkmark"></span>
</label>  <input type="submit" value="Submit">

<h1>Religion Options</h1>
<label class="container"> Judaism
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Islam
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Hinduism
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Buddhism
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Mormonism
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Seventh-Day Adventist
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">RastafarianismS
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
 <input type="submit" value="Submit">


<form action="/user_profile">

<select name="Food Allergy" multiple>
<label class="container"> Alcohol
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Almonds
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Avocado
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container">Bacon
  <input type="checkbox" check="checked">
  <span class="checkmark"></span>
</label>
<label class="container">Banana
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Beef
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Brazil Nuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Caffeine
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Cashews
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Cheese
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Chicken
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Chocolate
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Citrus
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Clams
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
</select>
<label class="container">Cocoa
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Crab
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Crayfish
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Cream
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Citrus
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Dairy
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Eggs
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Fish
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Flour
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Fructose
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Gelatin
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Hazelnuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Honey
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Lamb
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Legumes
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Lemon
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Lime
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Lobster
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Macadamia Nuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Maple
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Marshmellow
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Meat
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Milk
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Mussels
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Nuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Oranges
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Oysters
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Pecans
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Pine Nuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Pork
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Red Dye
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Salt
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Sodium
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Soy
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Soy Sauce
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Soybean
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Steak
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Strawberry
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Sugar
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Tea
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Tomatoes
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<label class="container">Walnuts
  <input type="checkbox">
  <span class="checkmark"></span>
</label><label class="container">Wheat
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
<input type="submit">
</form>
</body>
</html>
