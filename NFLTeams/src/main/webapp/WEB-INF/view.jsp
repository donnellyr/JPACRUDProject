<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Team</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="css/styleSheet.css">
</head>
<body>
<a href="home.do">Home</a>
<h1>${team.city} ${team.name}</h1>
<img src="${team.logo}" class="center" width="200" height="200">
<table class="table table-striped">
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
<input type="submit" class="btn btn-warning"value="Edit Team">
</form>
<form action="delete.do">
<input type="hidden" id="id" name="id" value="${team.id}">
<input type="submit" class="btn btn-danger" value="Delete Team">
</form>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html> 