<%@page import="_06_file.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="_06_file.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	
	<%
		ArrayList<FileDto> fileList = FileDao.getInstance().getFileList();
	%>
	<h1>파일 리스트</h1>
	<table border="1">
		<tr>
			<th>작성자</th>		
			<th>제목</th>		
			<th>파일명</th>		
			<th>첨부파일</th>		
			<th>날짜</th>		
		</tr>
 	<% 
 		for (FileDto fdto : fileList) {
 	%>
 			<tr align="center">
 				<td><%=fdto.getUserName() %></td>
 				<td><%=fdto.getTitle() %></td>
 				<td><%=fdto.getServerFileName() %></td>
 				<td><a href="fileEx02_download.jsp?fileName=<%=fdto.getServerFileName()%>">다운</a></td>
 				<td><%=fdto.getFileUploadDate() %></td>
 			</tr>
 	<% 		
 		}
 	%>	
		
	</table>


</body>
</html>

