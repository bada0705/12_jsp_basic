<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>body2</title>
</head>
<body>

	<h1 align="center">본문 위치에서 보여질 페이지 예시</h1>
	<%
		String data1 = request.getParameter("data1");
		data1 = URLDecoder.decode(data1 , "utf-8");
		
		String data2 = request.getParameter("data2");
	%>
	<h3>데이터1 : <%=data1 %></h3>
	<h3>데이터2 : <%=data2 %></h3>
	
</body>
</html>


