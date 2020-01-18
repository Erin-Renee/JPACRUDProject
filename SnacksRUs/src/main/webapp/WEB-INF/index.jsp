<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Welcome To the Snacks Page</title>
<jsp:include page="topstyle.jsp"></jsp:include>
</head>
<body>
<h1>hello, Lets get snackin'</h1>
<form action="getSnacks.do" method="GET">
  Film ID: <input type="text" name="id" />
  <input type="submit" value="Show Snack" />
</form>
<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>