<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

	<!-- 
	
		CREATE DATABASE FILE_EX;
		
		USE FILE_EX;
		
		CREATE TABLE FILE (
			USER_NAME 			VARCHAR(30),
		    TITLE 				VARCHAR(50),
		    ORIGIN_FILE_NAME 	VARCHAR(256),
		    SERVER_FILE_NAME 	VARCHAR(256),
		    FILE_TYPE 			VARCHAR(256),
		    FILE_UPLOAD_DATE 	DATE
		);
	
	 -->

	<form action="fileEx02_upload.jsp" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>파일 업로드</legend>
			<p>작성자 : <input type="text" name="userName"> </p>	
			<p>제 목 : <input type="text" name="title"> </p>
			<p>파일명1 : <input type="file" name="uploadFile1"> </p>
			<p>파일명2 : <input type="file" name="uploadFile2"> </p>
			<p><input type="submit" value="upload"></p>
		</fieldset>
	</form>

</body>
</html>

