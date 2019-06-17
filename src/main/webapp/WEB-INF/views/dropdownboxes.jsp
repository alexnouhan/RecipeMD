<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>


<form action="/user_profile">

<select name="Medications" multiple>
<label class="container"> Antibiotics
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Oral Contraception
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container"> Insulin
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container">Statin
  <input type="checkbox" check="checked">
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
</label>
</select>
<input type="submit">
</form>



<form action="/user_profile">
<select name="Diet Options" multiple>
<input type="submit">
<label class="container">Ketogenic
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container">Whole 30
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
<label class="container">Lacto-vegetarian
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
</select>
<input type="submit">
</form>


<form action="/user_profile">
<select name="Religion" multiple>
<input type="submit">
<select name="Religion Options" multiple>
<label class="container">Judaism
  <input type="checkbox" checked="checked">
  <span class="checkmark"></span>
</label>
<label class="container">Islam
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
<label class="container">Rastafarianism
  <input type="checkbox">
  <span class="checkmark"></span>
</label>
</select>
<input type="submit">
</form>

</body>
</html>