<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= application.getInitParameter("key1")%>
<%= application.getInitParameter("key2")%>
<br>
초기화 파라미터 목록
<%
	Enumeration en = application.getInitParameterNames();
	while(en.hasMoreElements())
	{
		String initKey = (String)en.nextElement();
		String initValue = (String)application.getInitParameter(initKey);
		out.println(initKey+" : "+initValue+"<br>");
	}
%>
	<br>
	서버 정보 : <%= application.getServerInfo() %>
	서블릿 규약 메이저 버전 : <%= application.getMajorVersion() %>
	서블릿 규약 마이너 버전 : <%= application.getMinorVersion() %>
</body>
</html>