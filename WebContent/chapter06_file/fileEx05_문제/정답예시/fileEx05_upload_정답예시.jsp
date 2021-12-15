<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

		Connection conn         = null;
		PreparedStatement pstmt = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");	
			
			String url       = "jdbc:mysql://localhost:3306/file_ex?serverTimezone=UTC";
			String user      = "root";
			String password  = "1234";
			
			conn = DriverManager.getConnection(url , user , password);
	
			
			MultipartRequest multi = new MultipartRequest(request,
														  "C:\\file_repository",
														  1024 * 1024 * 100,
														  "utf-8",
														  new DefaultFileRenamePolicy());
			
			Enumeration<?> files = multi.getFileNames();
			
			while (files.hasMoreElements()) {
				
				String element = (String)files.nextElement();
				
				pstmt = conn.prepareStatement("INSERT INTO T_FILE(FILE_NAME) VALUES(?)");
				pstmt.setString(1 , multi.getFilesystemName(element));
	 			pstmt.executeUpdate();
	 			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			conn.close();
		}
		
	%>
	<script>
		alert("업로드 되었습니다.");
		location.href = "fileEx05_list_정답예시.jsp";
	</script>
</body>
</html>