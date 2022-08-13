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
<h1>${team.name}</h1>
<table>
<tr>${team.abbreviation}</tr>
<tr>${team.city} </tr>
<tr>${team.division} </tr>
<tr>${team.conference} </tr>
<tr>${team.sbWins} </tr>
</table>
<form action="delete.do">
<input type="hidden" id="id" name="id" value="${team.id}">
<input type="submit" value="Delete Team">
</form>
</body>
</html>