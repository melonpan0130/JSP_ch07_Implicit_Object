<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ID: <%= config.getInitParameter("id") %>
PW: <%= config.getInitParameter("pw") %>
Name: <%= config.getInitParameter("name") %>

<hr>
getServletName() : <%= config.getServletName() %>
getInitParameterNames() : 
<%
	Enumeration en = config.getInitParameterNames();
	while(en.hasMoreElements()){
		String initKey = (String)en.nextElement();
		String initValue = config.getInitParameter(initKey);
		out.println(initKey+" : "+initValue+"<br>");
	}// while
%>

<%
	// isErrorPage="true"
	// exception.printStackTrace();
%>
</body>
</html>