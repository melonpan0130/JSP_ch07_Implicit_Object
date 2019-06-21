<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
getServerInfo() : <%= application.getServerInfo() %><br>
getRealPath() : <%= application.getRealPath("/L01_start.jsp") %><br>

<% application.log("2019-6-20 update by choi"); %>
</body>
</html>