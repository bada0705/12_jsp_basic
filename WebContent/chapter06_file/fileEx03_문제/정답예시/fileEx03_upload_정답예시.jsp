<%@page import="java.util.ArrayList"%>
<%@page import="_06_file.FileDto"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="_06_file.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>
	<% 
	
		request.setCharacterEncoding("utf-8");
		
		String location = "C:\\file_repository";
	
		MultipartRequest multi = new MultipartRequest(request,
													  location,
													  1024 * 1024 * 100,
													  "utf-8",
													  new DefaultFileRenamePolicy());
		
		Enumeration<?> files = multi.getFileNames();
	%>
		<h1>업로드 파일 확인</h1>
	<% 	
		if (files.hasMoreElements()) {
	
			String element = (String)files.nextElement();
			String filesystemName = multi.getFilesystemName(element);
	%>		
			<h3>파일명 : <%=filesystemName %></h3>
	<% 		
		}
	%>
	
</body>
</html>