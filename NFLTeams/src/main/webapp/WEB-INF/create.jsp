<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add new team</title>
</head>
<body>
<h1>add a new team</h1>
<form action="add.do">
<input type="text" id="abbreviation" name="abbreviation" placeholder="abbreviation">
<input type="text" id="" name="name" placeholder="name">
<input type="text" id="city" name="city" placeholder="city">
<input type="text" id="division" name="division" placeholder="division">
<input type="text" id="conferece" name="conference" placeholder="conference">
<input type="number" id="sbWins" name="sbWins" placeholder="SuperBowl Wins">
<input type="submit" value="Add Team">

</form>

</body>
</html>