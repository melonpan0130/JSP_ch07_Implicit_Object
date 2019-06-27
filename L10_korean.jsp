<%@page import="java.net.URLEncoder"%>
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
	String name = "홍길동";
	String encName = URLEncoder.encode(name, "utf-8");
	response.sendRedirect("L10_index.jsp?name=" + encName);
%>
</body>
</html>