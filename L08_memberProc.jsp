<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String job = request.getParameter("job");

%>

ID : <%= id %>
PW : <%= pw %>
name : <%= name %>
job : <%= job %>
<hr>
IP : <%= request.getRemoteAddr() %>
브라우저 : <%= request.getHeader("User-Agent") %>
<%= request.getMethod() %>
<%= response.getBufferSize() %>
<%= response.getCharacterEncoding() %>
</body>
</html>