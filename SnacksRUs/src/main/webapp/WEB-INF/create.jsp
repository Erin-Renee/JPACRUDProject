<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
<jsp:include page="topstyle.jsp"></jsp:include>

</head>
<body>
<h3>input snack into database</h3>
	<form action= "create.do" method="POST">
	<label for="name">Name</label>
		<input type= "text" name="name"><br>
		
	<label for="description">Description</label>
		<input type= "text" name="description"><br>
		
 	<label for="category">Category</label>
		<input type= "text" name="category"><br>
		
	<label for="calories">Calories</label>
		<input type= "text" name="calories"><br>
		
	<label for="sodium">Sodium</label>
		<input type= "text" name="sodium"><br>
		
	<label for="fats">Fats</label>
		<input type= "text" name="fats"><br>
		
	<label for="sugars">Sugars</label>
		<input type= "text" name="sugars"><br>
		
	<label for="vegan">Vegan</label>
		<input type= "text" name="vegan"><br>
		
	<label for="containsNuts">Contains Nuts</label>
		<input type= "text" name="containsNuts"><br> 
	
	<input type="hidden" name="Sid" value="${snack.id}"/>
	<input type="submit" name="submit" value="submit"/>
	</form>



<a href= "/" > Return Home </a>
<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>