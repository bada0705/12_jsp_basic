<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
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
		<table border="1">
			<tr>
				<th>파일명</th>
				<th>링크</th>
			</tr>
	<% 	
		while (files.hasMoreElements()) {
	
			String element = (String)files.nextElement();
			String filesystemName = multi.getFilesystemName(element);
	%>		
			<tr>
				<td><%=filesystemName %></td>
				<td><a href="fileEx04_download_정답예시.jsp?fileName=<%=filesystemName%>">다운</a></td>
			</tr>
			
	<% 		
		}
	%>
		</table>	

</body>
</html>