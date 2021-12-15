<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el pro</title>
</head>
<body>
	
	<%
	
		request.setCharacterEncoding("utf-8");
		session.setAttribute("id", request.getParameter("id"));
		session.setAttribute("name", request.getParameter("name"));
	
	%>
	
	<fieldset>
		<legend>el 테스트</legend>
		<p>아이디 : ${param.id }</p>
		<p>비밀번호: ${param.pwd }</p>
		<p>이름: ${param.name }</p>
		<p>나이: ${param.age }</p>
		<p>성별: ${param.gender }</p>
		
		<p>취미: ${paramValues.hobbies[0] }</p>
		<p>취미: ${paramValues.hobbies[1] }</p>
		<p>취미: ${paramValues.hobbies[2] }</p>
		
		<p>여행지: ${param.travel }</p>
		<p>메모: ${param.content }</p>
		
	</fieldset>
	<a href="elEx02_session.jsp">다음 페이지로 이동</a>

</body>
</html>