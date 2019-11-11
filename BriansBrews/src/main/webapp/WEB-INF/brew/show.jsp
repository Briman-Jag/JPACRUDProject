<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beers!</title>
</head>
<style>.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}</style>
<body>
	<div class="container">
		<h4>
			Beer ID:
			<c:out value="${brew.id }" />
		</h4>
		<c:if test="${empty brew.id}">Beer not found</c:if>
		<c:if test="${not empty brew }">
			<h2>${brew.name} (${brew.style})</h2>
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
	<a href="/" class="btn btn-secondary" role="button"><i class="fa fa-home"></i>Home</a>
</body>
</html>