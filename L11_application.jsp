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

<hr>
<%
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	
	if(key!=null && value!=null)
		application.setAttribute(key, value); // <id, hong>
		
	if(key!=null && value!=null)
		out.println(application.getAttribute("id"));
	else 
		out.println("application 기본 객체의 속성을 설정안함");
%>
<br>
<%
	// application에는 모든 애들이 필요한 것 넣음
	String id = (String)application.getAttribute("id");
	out.println(id);
%>
<br>
<b>application 기본 객체의 속성 보기</b>
<br>
<%
	Enumeration en2 = application.getAttributeNames();
	while(en2.hasMoreElements())
	{
		String name = (String)en2.nextElement();
		Object value2 = application.getAttribute(name);
		out.println(name+" : "+value2+"<br>");
	}
%>
<br>
<pre>
* 웹 어플리케이션은 4개의 영역(Scope)를 갖는다.
	- PAGE 영역 : 하나의 JSP 페이지를 처리할 때 사용되는 영역
	- REQUEST 영역 : 하나의 HTTP 요청(forward, include)을 처리할 떄 사용되는 영역
	(모듈화 -> 유지보수 유리)
	- SESSION 영역 : 하나의 웹 브라우저와 관련된 영역
	- APPLICATION 영역 : 하나의 웹 어플리케이션(다이나믹 웹 프로젝트)와 관련된 영역
	
* 기본 객체별로 속성의 활용
	- pageContext : PAGE 영역을 담당. 하나의 JSP 페이지 내에서 공유될 값을 저장(그냥 혼자 씀) 
		주로 커스텀 태그에서 새로운 변수를 추가할 때 사용.
	- request : REQUEST 영역을 담당. 한 번의 요청을 처리하는 데 사용되는 모든
		JSP 페이지에서 공유될 값을 저장한다. 주로 하나의 요청을 처리하는데 사용되는
		JSP 페이지 사이에서 정보를 전달하기 위해 사용된다.
	- session : SESSION 영역을 담당. 한 사용자(웹 브라우저)와 관련된 정보를
		JSP 페이지들이 공유하기 위해서 사용된다. 사용자의 로그인 정보와 같은 것들을
		저장한다.
	- application : APPLICATION 영역을 담당. 모든 사용자와 관련해서 공유할 정보를 저장한다.
		임시 디렉터리 경로와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다.
</pre>
</body>
</html>