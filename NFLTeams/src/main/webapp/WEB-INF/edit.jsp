<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add new team</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="css/styleSheet.css">

</head>
<body>
<h1>Edit ${team.name}</h1>
<form action="editTeam.do" class="form-control">
<input type="hidden" id="id" name="id" value="${team.id}">
<br>
Abbreviation: <input type="text" id="abbreviation" name="abbreviation" value="${team.abbreviation}" placeholder="abbreviation">
<br>
Name: <input type="text" id="" name="name" value="${team.name}" placeholder="name">
<br>
City: <input type="text" id="city" name="city" value="${team.city}" placeholder="city">
<br>
Division: <input type="text" id="division" name="division" value="${team.division}" placeholder="division">
<br>
Conference: <input type="text" id="conferece" name="conference" value="${team.conference}" placeholder="conference">
<br>
SuperBowl Wins: <input type="number" id="sbWins" name="sbWins" value="${team.sbWins}" placeholder="SuperBowl Wins">
<br>
Team Logo: <input type="text" id="logo" name="logo" value="${team.logo}" placeholder="logo URL">
<input type="submit" class="btn btn-primary" value="Edit Team">

</form>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>