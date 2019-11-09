<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Brian's Brews</title>
</head>
<body>
	<form action="getBrew.do" method="GET">
		Beer ID: <input type="text" name="bid" /> <input type="submit"
			value="Show Beer" />
	</form>
	<br>

	<c:forEach var="brew" items="${allBrews}">

		<a href="getBrew.do?bid=${brew.id }">${brew.name }</a>
		<br>
	</c:forEach>

</body>
</html>