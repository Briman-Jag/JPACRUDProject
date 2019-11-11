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
	<div class="brewId">
		<h4>
			Beer ID:
			<c:out value="${brew.id }" />
		</h4>
		<c:if test="${empty brew.id}">Beer not found</c:if>
		<c:if test="${not empty brew }">

			<h3>${brew.name} (${brew.style})</h3>
			<p>Brewery: ${brew.breweryName} (${brew.breweryLocation})</p>
			<p>ABV: ${brew.abv} / IBU: ${brew.ibu}</p>
			<p>My Rating (1-5): ${brew.myRating} </p>
			
		</c:if>
	</div>

	<br>
	<br>
	<form action="getBrewFields.do" method="GET">
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