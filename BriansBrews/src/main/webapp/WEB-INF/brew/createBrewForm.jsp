<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Beer</title>
</head>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
}
.button2 {font-size: 12px;}
</style>
<body>
	<h1>Add Beer and Details</h1>
	<div class="container">
			<form:form action="addBrew.do" method="POST"
				modelAttribute="brew">
				<form:label path="name">Name:</form:label>
				<form:input path="name" />
				<form:errors path="name" />
				<br />

				<form:label path="breweryName">Brewery Name:</form:label>
				<form:input path="breweryName" />
				<form:errors path="breweryName" />
				<br />

				<form:label path="breweryLocation">Brewery Location:</form:label>
				<form:input path="breweryLocation" />
				<form:errors path="breweryLocation" />
				<br />

				<form:label path="style">Style (currently ${brew.style}): </form:label>
				<form:select path="style">
					<form:option value="Lager">Lager</form:option>
					<form:option value="IPA">IPA</form:option>
					<form:option value="Stout">Stout</form:option>
					<form:option value="Imperial Stout">Imperial Stout</form:option>
					<form:option value="Witbier">Witbier</form:option>
					<form:option value="Gose">Gose</form:option>
					<form:option value="Porter">Porter</form:option>
					<form:option value="Pale Ale">Pale Ale</form:option>
					<form:option value="Porter">Porter</form:option>
					<form:option value="Brown Ale">Brown Ale</form:option>
					<form:option value="Saison">Saison</form:option>
					<form:option value="Pilsner">Pilsner</form:option>
					<form:option value="Berliner Weisse">Berliner Weisse</form:option>
					<form:option value="Witbier">Witbier</form:option>
					<form:option value="Kolsch">Kolsch</form:option>
					<form:option value="Dunkelweizen">Dunkelweizen</form:option>
					<form:option value="Other">Other</form:option>

				</form:select>
				<br>

				<form:label path="abv">Alcohol By Volume(ABV):</form:label>
				<form:input path="abv" /> %
				<form:errors path="abv" />
				<br />

				<form:label path="ibu">International Bitterness Units(IBU):</form:label>
				<form:input path="ibu" />
				<form:errors path="ibu" />
				<br />

				<form:label path="myRating">My Rating:</form:label>
				<form:select path="myRating">
					<form:option value="${brew.myRating }"> (currently ${brew.myRating })</form:option>
					<form:option value="5">5</form:option>
					<form:option value="4.75">4.75</form:option>
					<form:option value="4.5">4.5</form:option>
					<form:option value="4.25">4.25</form:option>
					<form:option value="4">4</form:option>
					<form:option value="3.75">3.75</form:option>
					<form:option value="3.5">3.5</form:option>
					<form:option value="3.25">3.25</form:option>
					<form:option value="3">3</form:option>
					<form:option value="2.75">2.75</form:option>
					<form:option value="2.5">2.5</form:option>
					<form:option value="2.25">2.25</form:option>
					<form:option value="1">1</form:option>
					<form:option value="1.75">1.75</form:option>
					<form:option value="1.5">1.5</form:option>
					<form:option value="1.25">1.25</form:option>
					<form:option value="1">1</form:option>
				</form:select>
				<br />
				<br />
				<button type="submit" name="bid" value="${brew.id}">Add
					Beer</button>
				<br>
				<a href="/" class="btn btn-secondary" role="button"><i class="fa fa-home"></i>Home</a>
			</form:form>
		<br />
	</div>
</body>
</html>