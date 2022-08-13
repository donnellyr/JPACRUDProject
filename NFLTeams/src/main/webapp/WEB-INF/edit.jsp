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
<h1>Edit ${team.name}</h1>
<form action="editTeam.do">
<input type="hidden" id="id" name="id" value="${team.id}">
<input type="text" id="abbreviation" name="abbreviation" value="${team.abbreviation}" placeholder="abbreviation">
<input type="text" id="" name="name" value="${team.name}" placeholder="name">
<input type="text" id="city" name="city" value="${team.city}" placeholder="city">
<input type="text" id="division" name="division" value="${team.division}" placeholder="division">
<input type="text" id="conferece" name="conference" value="${team.conference}" placeholder="conference">
<input type="number" id="sbWins" name="sbWins" value="${team.sbWins}" placeholder="SuperBowl Wins">
<input type="submit" value="Edit Team">

</form>

</body>
</html>