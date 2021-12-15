<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초1</title>
<script>
	function sendData() {
		document.f.submit(); // submit()메서드를 사용하여 데이터를 전송한다.
	}
</script>
</head>
<body>
	
	<form action="formEx01Pro.jsp" name="f"> <!-- action속성 값에 데이터를 전송할 목적지를 작성한다. -->
		<fieldset>
			<p>
				가장 자신있는 프로그래밍 언어 : 
				<input type="text" name="language">
			</p>
			<p>
				자신있는 이유 : <br>
				<textarea name="reason"></textarea>
			</p>
			<p>
				공부했던 프로그래밍 언어의 개수 :
				<input type="text" name="languageCount">
			</p>
			
			<p>	
				<!-- 데이터 전송 방법 1) submit 타입을 사용하여 전송한다. (가장 일반적인 방법) -->
				<input type="submit" value="전송">
				
				<!-- 데이터 전송 방법 2) 자바스크립트를 이용하여 전송한다. ( form의 name속성값이 있어야 한다. )-->
				<input type="button" value="전송" onclick="sendData()">	
			</p>
			
		</fieldset>
	</form>
	
</body>
</html>