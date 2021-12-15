<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	
	<!-- JavaScript -->
	<script>
		/*
		var data1 = "팀 버너스 리";
		var data2 = "Timothy John Berners Lee";
		
		// location.href = "forwardEx02_target.jsp?data1=" + data1 + "&data2=" + data2;
		
		var url = "forwardEx02_target.jsp";
		   url += "?data1=" + data1;
		   url += "&data2=" + data2;
		
		location.href = url;
		*/
	</script>
	
	
	<!-- Java -->
	<%
		/*
		String data1 = URLEncoder.encode("팀 버너스 리", "utf-8");
		String data2 = "Timothy John Berners Lee";
	
		String url = "forwardEx02_target.jsp";
		   url += "?data1=" + data1;
		   url += "&data2=" + data2;
		
		response.sendRedirect(url);   
		*/   
	%>
	
	<!-- jsp action tag -->
	<jsp:forward page="forwardEx02_target.jsp">
		<jsp:param value='<%=URLEncoder.encode("팀 버너스 리","utf-8") %>' name="data1"/>
		<jsp:param value="Timothy John Berners Lee" name="data2"/>
	</jsp:forward>
	
</body>
</html>


