<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	buffer="8kb"
	autoFlush="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
IsAutoFlush() : <%= out.isAutoFlush() %><br>
getBufferSize() : <%= out.getBufferSize() %><br>
getRemaining() : <%= out.getRemaining() %><br>
clearBuffer() : <% out.clearBuffer(); %><br>

<hr>
<%
	// JspWriter out2 = new JspWriter();
	JspWriter out2 = pageContext.getOut();
%>

<% out2.println("Hello"); %>

<hr>
<%
	String id = request.getParameter("id"); // tomcat
	// HttpServletRequest request2 = new HttpServletRequest();
	ServletRequest request2 = pageContext.getRequest();
	String id2 = request2.getParameter("id"); // pageContext
%>

ID : <%= id %><br>
ID2 : <%= id %><br>
<hr>
application(..) : <%= application.getServerInfo() %> <br>
</body>
</html>