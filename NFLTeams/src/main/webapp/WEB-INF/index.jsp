<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>NFL Teams</h1>
<a href="create.html">add team</a>
<form action="getTeam.do">
<input type="number" id="id" name="id">
<input type="submit" value="submit">
</form>
<table>
<c:forEach items="${teams}" var="team">
<tr>
<td><a href="getTeam.do?id=${team.id}">${team.city} ${team.name}</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>