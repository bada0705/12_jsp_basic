<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!-- 
	
		1. 자바스크립트를 이용하여 
			
			1-1) 추가 버튼을 누를경우 업로드할 파일의 개수가 1개씩 추가된다.
			1-2) 삭제 버튼을 누를경우 업로드할 파일의 개수가 1개씩 삭제된다. (최소 하나의 엘리먼트는 남긴다.)
		
		2. 파일의 저장 위치는 'C 드라이브의 file_repository 폴더'로 지정한다.
		
		3. fileEx04_form_정답.jsp 파일에서 @result.PNG와 같은 테이블 형식으로 파일명과 다운로드 링크를 보여준다.
		   
		4. fileEx04_download_정답.jsp파일을 통하여 파일을 다운로드 받을 수 있게 만든다.
	
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