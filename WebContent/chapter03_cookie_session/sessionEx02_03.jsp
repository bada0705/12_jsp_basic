<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션</title>
</head>
<body>

	<h2>마이페이지</h2>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id     = (String)session.getAttribute("id");
		String passwd = (String)session.getAttribute("passwd");
	
	%>

	아이디 : <%=id %><br>
	패스워드 : <%=passwd %><br>

	<a href="sessionEx02_04.jsp">회원정보 수정으로 이동</a>

</body>
</html>