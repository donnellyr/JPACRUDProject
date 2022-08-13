<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Team</title>
</head>
<body>
<a href="home.do">Home</a>
<h1>${team.city} ${team.name}</h1>
<table>
<tr>Abbreviation: ${team.abbreviation}</tr>
<br>
<tr>Conference: ${team.conference} </tr>
<br>
<tr>Division: ${team.division} </tr>
<br>
<tr>SuperBowls Won: ${team.sbWins} </tr>
</table>
<form action="editView.do">
<input type="hidden" id="id" name="id" value="${team.id}">
<input type="submit" value="Edit Team">
</form>
<form action="delete.do">
<input type="hidden" id="id" name="id" value="${team.id}">
<input type="submit" value="Delete Team">
</form>
</body>
</html>