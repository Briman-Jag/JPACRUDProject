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
		<h1>Beer Created! Cheers!</h1>
		<h4>
			Beer ID:
			<c:out value="${brew.id }" />
		</h4>
		<c:if test="${empty brew.id}">Beer not found</c:if>
		<c:if test="${not empty brew }">
			<h4>Beer ID: ${brew.id }</h4>
			<h5>${brew.name}(${brew.style})</h5>
			<table>
				<tr>
					<td>Brewery: ${brew.breweryName} (${brew.breweryLocation})</td>
					<td>ABV: ${brew.abv} / IBU: ${brew.ibu}</td>
					<td>My Rating (1-5): ${brew.myRating}</td>
				</tr>
			</table>
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