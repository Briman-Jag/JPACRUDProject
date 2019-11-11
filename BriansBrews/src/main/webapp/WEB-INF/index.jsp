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
			value="Search ID" />
	</form>
	<br>
	<form action="getBrewByName.do" method="GET">
		Search Beer By Keyword <input type="text" name="name" size= 30/> <input
			type="submit" value="Search" />
	</form>
	<br>
	<form action="addBrewForm.do">
		<input type="submit" value="Add Beer to List" />
	</form>
	<br>
	<form action="getAllBrews.do" method="GET">
		<input type="submit" value="Full Beer List" />
	</form>
	<br>

</body>
</html>