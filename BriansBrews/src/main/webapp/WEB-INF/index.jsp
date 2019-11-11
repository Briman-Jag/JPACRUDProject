<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Brian's Brews</title>
</head>
<h1>Welcome to Brian's Beer List!</h1>
<body>
	<form action="getBrew.do" method="GET">
		Beer ID: <input type="text" name="bid" /> <input type="submit"
			value="Search ID" />
	</form>
	<br>
	<!-- Used if list is longer -->
<!-- 	<form action="getBrewByName.do" method="GET">
		Search Beer By Name <input type="text" name="name" size=30 /> <input
			type="submit" value="Search" />
	</form> -->
	<br>
	<form action="addBrewForm.do">
		<input type="submit" value="Add Beer to List" />
	</form>
	<br>
	<br>
	<h2>Select Beer to view Information</h2>
	<c:forEach var="brew" items="${allBrews}">
		<table>
			<tr>
				<td>${brew.id }. <a href="getBrew.do?bid=${brew.id }">${brew.name }</a></td>
			<tr>
		</table>
	</c:forEach>
	<br>

</body>
</html>