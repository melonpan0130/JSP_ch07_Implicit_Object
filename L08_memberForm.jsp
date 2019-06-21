<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check()
	{
		if(document.form.id.value == ""){
			alert("please write id");
			document.form.id.focus();
			return;
		} else if(document.form.pw.value == ""){
			alert("please write password");
			document.form.pw.focus();
			return;
		} else if(document.form.name.value == ""){
			alert("please write name");
			document.form.name.focus();
			return;
		}
		document.form.submit();
	}
</script>
</head>
<body>
	<pre>
	*JSP에서 기본으로 제공되는 내장객체는 9개
	- request, response, out : 입출력 관련
	- session, application, pageContext : 현재 실행되는 페이지의 외부환경 정보 관련
	- page : jsp페이지 그 자체 의미
	- config : 서블릿을 초기화하는 동안 참조할 정보를 전해주는 역할
	- exception : 예외 객체
	</pre>
	<hr>
	<b>내장 객체중 request, response 연습</b><br>
	<form method="post" action="L08_memberProc.jsp" name="form">
		id:<input type="text" name="id" size="10"><br>
		pw:<input type="text" name="pw" size="10"><br>
		name:<input type="text" name="name" size="10"><br>
		Job:
			<select name="job">
				<option value="student">student</option>
				<option value="teacher">teacher</option>
				<option value="etc">etc</option>
			</select>
		<input type="submit" value="submit" onclick="check()">
		<input type="reset" value="cancel">
	</form>
</body>
</html>