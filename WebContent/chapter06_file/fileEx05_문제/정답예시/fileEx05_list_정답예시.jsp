<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="_06_file.FileDto"%>
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
	
		request.setCharacterEncoding("utf-8");

		Connection conn         = null;
		PreparedStatement pstmt = null;
		ResultSet rs		    = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");	
			
			String url       = "jdbc:mysql://localhost:3306/file_ex?serverTimezone=UTC";
			String user      = "root";
			String password  = "1234";
			
			conn = DriverManager.getConnection(url , user , password);
	
			pstmt = conn.prepareStatement("SELECT * FROM T_FILE");
	 		rs = pstmt.executeQuery();
	 %>
	 	<fieldset>
	 		<legend>파일 리스트</legend>
	 <% 	
	 		
	 		while (rs.next()) {
	 %>
	 		 <p><%=rs.getInt("FILE_CODE") %>. <a href="fileEx05_download_정답예시.jsp?fileName=<%=rs.getString("FILE_NAME") %>"><%=rs.getString("FILE_NAME") %></a></p>
	 <%
	 		}
	 %>
	 	</fieldset>
	 <% 		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			conn.close();
		}
	%>

</body>
</html>