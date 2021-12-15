<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
<script>

	// 예시 1)
	
	function checkFileType(){
		
		var fileName = document.getElementById("file1").value;	// 파일명을 읽어온다.
		fileName = fileName.toLowerCase();						// 알파벳을 모두 소문자로 전환한다.
		var index = fileName.indexOf('.');						// .의 인덱스를 찾는다.
		var type = fileName.substring(index+1,fileName.length);	// .다음 문자부터 문자열의 끝까지 문자열을 파싱한다.
		
		if (type != "png") {									// 파싱된 문자열이 png가 아닐 경우
			alert("png 확장자만 업로드 할 수 있습니다.");		// 안내메세지 출력후
			return false;										// 폼을 전송하지 않는다.
		}
		
	}

	// 예시 2)
	/*
	function checkFileType(){

		var fileName = document.getElementById("file1").value;	// 파일명을 읽어온다.
		fileName = fileName.toLowerCase();						// 알파벳을 모두 소문자로 전환한다.
		var findPng = fileName.indexOf('png');					// png의 인덱스를 찾는다.
		
		if (findPng == -1) {									// png의 인덱스를 못찾았을 경우 -1을 반환한다.
			alert("png 확장자만 업로드 할 수 있습니다.");		// 안내메세지 출력후
			return false;										// 폼을 전송하지 않는다.
		}
		
	}
	*/
</script>
	
</head>
<body>

	<!-- 
	
		1. 파일의 확장자를 검사하여 png 또는 PNG 아닌 모든 확장자는 폼 전송이 되지 않도록 한다.
		
		2. 파일의 저장 위치는 'C 드라이브의 file_repository 폴더'로 지정한다.
		
		3. fileEx03_upload_정답.jsp 파일에서 @)result.PNG 파일과 같은 형태로 정보를 출력한다.
		
		힌트) 
		
			문자열.indexof('문자') 					> 해당 문자의 위치를 반환한다. 해당 문자가 없을 경우 -1을 반환한다.  
		    문자열.substr(시작위치 , 개수);		    > 시작위치부터 개수만큼의 문자열을 파싱한다. 
			문자열.substring(시작위치 , 종료위치);  > 시작위치부터 종료위치 -1만큼의 문자열을 파싱한다.
			문자열.length							> 문자열의 길이를 반환한다.
	
	 -->

	<form action="fileEx03_upload_정답예시.jsp" method="post" enctype="multipart/form-data" onsubmit="return checkFileType()">
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