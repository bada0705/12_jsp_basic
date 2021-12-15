<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!-- 
	
		1. 파일의 확장자를 검사하여 png 또는 PNG가 아닌 모든 확장자는 폼 전송이 되지 않도록 한다.
		
		2. 파일의 저장 위치는 'C 드라이브의 file_repository 폴더'로 지정한다.
		
		3. fileEx03_upload_정답.jsp 파일에서@)result.PNG 파일과 같은 형태로 정보를 출력한다.
		
		힌트) 
		
			문자열.indexof('문자') 					> 해당 문자의 위치를 반환한다. 해당 문자가 없을 경우 -1을 반환한다.  
		    문자열.substr(시작위치 , 개수);		    > 시작위치부터 개수만큼의 문자열을 파싱한다. 
			문자열.substring(시작위치 , 종료위치);  > 시작위치부터 종료위치 -1만큼의 문자열을 파싱한다.
			문자열.length							> 문자열의 길이를 반환한다.
	
	 -->

	<form>
		<fieldset>
			<legend>파일 업로드</legend>
			<div id="fileList">
				<p><input type="file" id="file1" name="file1"></p>
			</div>
			<p><input type="submit" value="upload"></p>		
		</fieldset>	
	</form>

</body>
</html>