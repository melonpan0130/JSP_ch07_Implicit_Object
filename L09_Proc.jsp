<%@page import="java.util.Map"%>
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
<%
	request.setCharacterEncoding("utf-8");
%>

<p>request.getParameter() Method</p>
name : <%= request.getParameter("name") %><br>
Address : <%= request.getParameter("address") %><br>
<br>
<b>request.getParameterValues() Method</b><br>
Pet : 
<%
	String values[] = request.getParameterValues("pet");
	if(values != null)
		for(String value: values) {
			out.println(value+"<br>");
		}
%>
<br>
<b>request.getParameterNames() Method</b><br>
<%
	Enumeration en = request.getParameterNames();
	while(en.hasMoreElements()){
		String key = (String)en.nextElement();
		out.println(key+"<br>");
	}
%>
<br>
<b>request.getParameterMap()</b><br>
<%
	Map map = request.getParameterMap();
	String nameMap[] = (String[])map.get("name");
	String addressMap[] = (String[])map.get("address");
	out.println(nameMap[0]+" : "+addressMap[0]+"<br>");
	
	String petMap[] = (String[])map.get("pet");
	if(petMap!=null)
		for(String pet:petMap)
			out.println(pet+"<br>");
%>
<br>
<b>Print Header list</b><br>
<%
	Enumeration en2 = request.getHeaderNames();
	while(en2.hasMoreElements()) {
		String headerKey = (String)en2.nextElement();
		String headerValue = request.getHeader(headerKey);
		out.println(headerKey+" : "+headerValue+"<br>");
	}
%>
</body>
</html>