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
	
	if(id.equals("choi")) // 회원
		response.sendRedirect("L10_index.jsp?name="+id);
	else{ // 비회원
		response.sendRedirect("L10_join.jsp");
	}
		
%>
</body>
</html>