<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<jsp:include page="topstyle.jsp"></jsp:include>
<style>

body {
	background: #222
		url('https://www.pennmedicine.org/-/media/images/miscellaneous/food%20and%20drink/bananas_pink_background.ashx?mw=620&mh=408')
		center center no-repeat;
	min-height: 100vh;
	width: 100%;
	background-size: cover;
}
#cover {
	text-align: center;
	display: flex;
	align-items: center;
	position: relative;
}
.snacks {
	display: flex;
	flex-wrap: wrap;
	
}
</style>
<title>Welcome To the Snacks Page</title>
</head>


<body>
	<header>
			<h1>Hello, Lets Get Snackin'</h1>
			<form action="getSnacksById.do" method="GET">
				ID: <input type="text" name="id" /> <input type="submit"
					value="Show Snack" />
			</form>
		<a href="/"> Home </a>
	</header>
	<div id="cover" class=min-vh-100">
		<form action="create.do">
			<input type="submit" value="Create Snack" />
		</form>
		</div>
		<br/>
		<div class="snacks">
		<ul>
			<c:forEach var="snacks" items="${snacks}">
				<li><a href="getSnacksById.do?id=${snacks.id}">${snacks.name}</a>
				</li>
		
		
			</c:forEach>
		
		</ul>
		</div>
	
		<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>