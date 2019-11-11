<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deleted Film Result</title>
</head>
<body>
	<h1>Deleted Film Result</h1>
	<div class="container">
		<c:if test="${empty brew.id}">Beer deleted</c:if>
		<c:if test="${not empty brew }">

			<h3>${brew.name}(${brew.style})</h3>
			<p>Brewery: ${brew.breweryName} (${brew.breweryLocation})</p>
			<p>ABV: ${brew.abv} / IBU: ${brew.ibu}</p>
			<p>My Rating (1-5): ${brew.myRating}</p>

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