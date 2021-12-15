<%@page import="_06_file.FileDao"%>
<%@page import="_06_file.FileDto"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	
		String location = "D:\\ABU\\12_web_share_folder\\workspace\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
	
		MultipartRequest multi = new MultipartRequest(request,
													 location,
													 1024 * 1024 * 15,
													 "utf-8",
													 new DefaultFileRenamePolicy());
	
		
		String userName      = multi.getParameter("userName");
		String title	     = multi.getParameter("title");
		Enumeration<?> files = multi.getFileNames();
		
		while (files.hasMoreElements()) {
			
			String element = (String)files.nextElement();
			
			String serverFileName = multi.getFilesystemName(element);
			String originFileName = multi.getOriginalFileName(element);
			String fileType       = multi.getContentType(element);
			
			FileDto fdto = new FileDto();
			
			fdto.setUserName(userName);
			fdto.setTitle(title);
			fdto.setServerFileName(serverFileName);
			fdto.setOriginFileName(originFileName);
			fdto.setFileType(fileType);
			
			FileDao.getInstance().insertFile(fdto);

		}
	
	%>
	
	<script>
		alert("파일이 업로드 되었습니다.");
		location.href = "fileEx02_list.jsp";
	</script>
	


</body>
</html>

