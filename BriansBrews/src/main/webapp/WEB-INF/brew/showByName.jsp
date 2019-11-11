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
	<div class="container">
		<c:forEach var="brew" items="${foundBrew}">
			<c:out value="${name } " />
			<c:if test="${empty brew.name}">Beer not found</c:if>
			<c:if test="${not empty brew }">
				<h4>Beer ID: ${brew.id }</h4>
				<h2>${brew.name}(${brew.style})</h2>
				<table>
					<tr>
						<td>Brewery: ${brew.breweryName}</td>
						<td>(${brew.breweryLocation})</td>
					</tr>
					<tr>
						<td>ABV: ${brew.abv}% / IBU: ${brew.ibu}</td>
					</tr>
					<tr>
						<td>My Rating (1-5): ${brew.myRating}</td>
					</tr>
				</table>
			</c:if>
		</c:forEach>
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