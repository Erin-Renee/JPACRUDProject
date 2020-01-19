<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snack displayed here</title>
<jsp:include page="topstyle.jsp"></jsp:include>
</head>
<body>
	<h1> Snacks shown here!</h1>
	<div>
  <h5>Snack: ${snack.name}</h5><br>
  <p>ID: ${snack.id}</p>
  
  <p>Description: ${snack.description}</p>
  <p>category: ${snack.category}</p>
  <p>calories: ${snack.calories}</p>
  <p>sodium: ${snack.sodium}</p>
  <p>fats: ${snack.fats}</p>
  <p>sugars: ${snack.sugars}</p>
  <p>vegan(0 or 1): ${snack.vegan}</p>
  <p>containsNuts(0 or 1): ${snack.containsNuts}</p>
</div>
<form action="delete.do" method="GET">
   <input type="hidden" name="snackId" value="${snack.id}" />
  <input type="submit" name = "delete" value="Delete" />
</form>

<a href= "/" > Return Home </a>
<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>