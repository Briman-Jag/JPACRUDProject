<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beers!</title>
</head>
<body>
	<div>
		<h5>${brew.name}(${brew.style})</h5>
		<p>Brewery: ${brew.breweryName} (${brew.breweryLocation})</p>
		<p>ABV: ${brew.abv} / IBU: ${brew.ibu}</p>
		<p>My Rating:${brew.myRating} (Scale 1-5)</p>
	</div>

</body>
</html>