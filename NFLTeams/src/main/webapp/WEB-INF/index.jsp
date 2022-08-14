<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="css/styleSheet.css">
</head>
<body>
<h1>NFL Teams</h1>
<img alt="NFL Logo" src="https://static.www.nfl.com/image/upload/v1554321393/league/nvfr7ogywskqrfaiu38m.svg" class="center" width="350" height="350">
<a href="create.html">add team</a>
<br>

Find Team By ID: <form action="getTeam.do" class="form-control">
<input type="number" id="id" name="id" placeholder="Find Team By ID">
<input type="submit"class="btn btn-primary"value="submit">
</form>
<table class="table table-striped">
<c:forEach items="${teams}" var="team">
<tr>
<td><a href="getTeam.do?id=${team.id}">${team.city} ${team.name}</a></td>
</tr>
</c:forEach>
</table>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>