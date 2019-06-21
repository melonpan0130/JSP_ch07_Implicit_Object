<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="L02_request_proc.jsp">
		학번 <input type="text" name="num"><br>
		이름 <input type="text" name="name"><br>
		학년
		<input type="radio" name="grade" value="1" checked>1학년&nbsp;
		<input type="radio" name="grade" value="2">2학년&nbsp;
		<input type="radio" name="grade" value="3">3학년&nbsp;
		<input type="radio" name="grade" value="4">4학년<br>
		선택과목
		<select name="subject">
			<option value="java">JAVA</option>
			<option value="jsp">JSP</option>
			<option value="xml">XML</option>
		</select><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>