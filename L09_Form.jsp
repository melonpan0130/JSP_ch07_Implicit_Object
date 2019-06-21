<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="L09_Proc.jsp" method="post" name="form">
		name : <input type="text" name="name" size="10"><br>
		address : <input type="text" name="address" size="10"><br>
		animal : 
		<input type="checkbox" name="pet" size="10" value="dog">Dog
		<input type="checkbox" name="pet" size="10" value="cat">Cat
		<input type="checkbox" name="pet" size="10" value="pig">Pig
		<br>
		<input type="submit" value="submit">
	</form>
</body>
</html>