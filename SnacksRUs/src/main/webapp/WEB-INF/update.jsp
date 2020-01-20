<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<jsp:include page="topstyle.jsp"></jsp:include>

</head>
<body>
<h3>update snack in database</h3>
	<form action= "edit.do" method="POST">
	<label for="name">Name</label>
		<input type= "text" name="name" value= "${snack.name}" required><br>
		
	<label for="description">Description</label>
		<input type= "text" name="description"value= "${snacks.description}"><br>
		
 	<label for="category">Category</label>
		<input type= "text" name="category"value= "${snack.category}"><br>
		
	<label for="calories">Calories</label>
		<input type= "text" name="calories" value= "${snack.calories}"><br>
		
	<label for="sodium">Sodium</label>
		<input type= "text" name="sodium"value= "${snack.sodium}"><br>
		
	<label for="fats">Fats</label>
		<input type= "text" name="fats"value= "${snack.fats}"><br>
		
	<label for="sugars">Sugars</label>
		<input type= "text" name="sugars"value= "${snacks.sugars}"><br>
		
	<label for="vegan">Vegan</label>
		<input type= "text" name="vegan"value= "${snack.vegan}"><br>
		
	<label for="containsNuts">Contains Nuts</label>
		<input type= "text" name="containsNuts"value= "${snack.containsNuts}"><br> 
	
	<input type="hidden" name="snackId" value="${snack.id}"/>
	<input type="submit" name="submit" value="submit"/>
	</form>



<a href= "/" > Return Home </a>
<jsp:include page="bottomstyle.jsp"></jsp:include>
</body>
</html>