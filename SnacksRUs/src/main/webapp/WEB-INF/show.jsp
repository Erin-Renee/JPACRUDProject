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
  <h5>Snack: ${snacks.name}</h5><br>
  <p>ID: ${snacks.id}</p>
  
  <p>Description: ${snacks.description}</p>
</div>
<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>