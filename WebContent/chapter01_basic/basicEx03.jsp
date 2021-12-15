<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성</title>
</head>
<body>

	<% 
		Random ran = new Random();
		String[] languages = {"JSP" , "JAVA" , "HTML5" , "CSS3" , "JAVSCRIPT"};
	
		int r = ran.nextInt(5);
	%>
	
	<%=languages[r] %>언어가 재미있다!

	<hr>
	
	<% 
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String now = sdf.format(date);
	%>	
	오늘의 날짜 : <%=now %>

</body>
</html>