<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>All Brian's Beers</title>
</head>
<body>
	<h2>Select Beer to view Information</h2>
	<c:forEach var="brew" items="${allBrews}">
		<a href="getBrew.do?bid=${brew.id }">${brew.name }</a>
		<br>
	</c:forEach>
	<br>
	<a href="/" class="btn btn-secondary" role="button">Home</a>
</body>
</html>