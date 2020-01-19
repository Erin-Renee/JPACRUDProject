<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Welcome To the Snacks Page</title>
<jsp:include page="topstyle.jsp"></jsp:include>
</head>
<body>
<h1>Hello, Lets Get Snackin'</h1>
<form action="getSnacksById.do" method="GET">
   ID: <input type="text" name="id" />
  <input type="submit" value="Show Snack" />
</form>
<form action="create.do">
<input type = "submit" value= "Create Snack"/>
</form>
<c:forEach var="snacks" items="${snacks}">
<li>
<a href= "getSnacksById.do?id=${snacks.id}">${snacks.name}</a>
</li>


</c:forEach>
<a href= "/" > Show Snack List </a>

<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>