<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!-- 
	
		1. [ fileEx_04문제 2단계 작업진행]
			
			테이블을 추가생성한다.
	
			USE FILE_EX;
	
			CREATE TABLE T_FILE (
				FILE_CODE INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
				FILE_NAME VARCHAR(256)
			);
	
			SELECT * FROM T_FILE;
	
	
		2. fileEx05_upload_정답.jsp파일에 DB와 연동하여
		   'C 드라이브의 file_repository 폴더'로 파일을 업로드함과 동시에 데이터베이스에 파일명을 저장한다. 
	 		Dao를 사용하지 않고 fileEx05_upload_정답.jsp에서 DB연동을 직접코딩한다.
	 		@)result.PNG를 참조한다.
	 	
	 	
	 	3. fileEx05_list_정답.jsp파일에 DB와 연동하여
	 	   DB 목록에 있는 파일을 'C 드라이브의 file_repository 폴더'에서 읽어온다.
	 	   Dao를 사용하지 않고 fileEx05_list_정답.jsp에서 DB연동을 직접 코딩한다.
	 	   @)result.PNG를 참조한다.
	 		
	 -->

	<p>
		<input type="button" value="추가">
		<input type="button" value="삭제">
	</p>
	<form>
		<fieldset>
			<legend>파일 업로드</legend>
			<div id="fileList">
				<p><input type="file" name="file1"></p>
			</div>
			<p><input type="submit" value="upload"></p>		
		</fieldset>	
	</form>

</body>
</html>