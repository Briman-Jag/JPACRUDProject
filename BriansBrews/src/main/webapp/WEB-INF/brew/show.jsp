<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beers!</title>
</head>
<body>
	<div>
		<c:out value="${brew.name } " />
		<c:if test="${empty brew.name}">Beer not found</c:if>
		<c:out value="${brew.id } " />
		<c:if test="${empty brew.id}">Beer not found</c:if>
		<c:if test="${not empty brew }">
			<h4>Beer ID: ${brew.id }</h4>
			<h5>${brew.name}(${brew.style})</h5>
			<p>Brewery: ${brew.breweryName} (${brew.breweryLocation})</p>
			<p>ABV: ${brew.abv} / IBU: ${brew.ibu}</p>
			<p>My Rating: ${brew.myRating} (Scale 1-5)</p>
		</c:if>
	</div>
	<br>
	<br>
	<form action="updateBrewFields.do" method="GET">
		<button type="submit" name="bid" value="${brew.id}">Update
			Beer's Details</button>
	</form>
	<form action="deleteBrew.do" method="POST">
		<button type="submit" name="bid" value="${brew.id}">Delete
			Beer</button>
	</form>
	<br>
	<a href="/" class="btn btn-secondary" role="button">Home</a>
</body>
</html>