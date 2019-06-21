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
	
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	
	Enumeration en = request.getParameterNames();
%>
학번: <%=num %><br>
이름: <%=name %><br>
학년: <%=grade %><br>
과목: <%=subject %><br>
<hr>
<h4>모든 Key값 가져오기</h4>
<%
	if(!en.hasMoreElements())
		out.println("key가 없습니다.");
	else
		while(en.hasMoreElements()) {
			String key = (String)en.nextElement();
			String value = request.getParameter(key);
			out.println(key+" : "+value+"<br>");
		}
%>
<hr>
<%
	request.setAttribute("일", "1");
	request.setAttribute("이", "2");
	request.setAttribute("삼", "3");
	
	out.println("request.getAttribute('일') : "+request.getAttribute("일")+"<br><br>");
%>
<h4>모든 Attribute값 가져오기</h4>
<%
	Enumeration en2 = request.getAttributeNames();
	
	if(!en2.hasMoreElements())
		out.println("key가 없습니다.");
	else
		while(en2.hasMoreElements()) {
			String key = (String)en2.nextElement();
			String value = (String)request.getAttribute(key);
			out.println(key+" : "+value+"<br>");
		}
%>
</body>
</html>