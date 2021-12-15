<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String data1 = request.getParameter("data1");
		data1 = URLDecoder.decode(data1, "utf-8");
		
		String data2 = request.getParameter("data2");
		
	%>

	<h1>포워딩 된 페이지2 입니다.</h1>
	<h3>전달된 데이터 : <%=data1 %></h3>
	<h3>전달된 데이터 : <%=data2 %></h3>
	
</body>
</html>