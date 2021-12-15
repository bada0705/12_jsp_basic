<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
	
	<!-- 
	
		# 서블릿(Servlet)
		
		- 서블릿이란 자바를 사용하여 웹을 만들기 위해 필요한 기술이름이다.
		
		- 클라이언트의 요청을 처리하고 그 결과를 반환하는 자바 웹 프로그래밍 기술이다.

		- M(model) V(view) C(controller) 패턴에서 Controller로 이용된다.

		- HTTP 프로토콜 서비스를 지원하는 javax.servlet.http.HttpServlet 클래스를 상속받아서 구현되어진다.

		- Java Server(WAS)가 JSP 코드를 읽어들여 서블릿 소스 코드로 변환하여 컴파일한다.		
			JSP 파일 > Servlet 파일 > 클래스 파일 > 컴파일
		
		- 서블릿(Servlet)은 웹 브라우저에서 request가 있는 경우 애플리케이션 서버(WAS)가 서블릿 클래스의 인스턴스를 생성한다.
			매번 리퀘스트 할 때마다 인스턴스를 생성하는 것은 서버에 부하가 걸리기 때문에, 
			처음 생성된 인스턴스를 request에 대한 response 뒤에도 파기하지 않고 클라이언트의 다음 request에서도 재사용하며 
			서버를 종료하는 등의 경우 서버에서 인스턴스를 파기한다.	
			
	 -->
	
	<div align="center">
		<h2>회원가입</h2>
		<form method="post" action="JoinAction">		<!-- jsp파일이름이 아닌 서블릿의 요청 URL을 입력한다. -->
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<th>취미</th>
					<td>
						<input type="checkbox" name="hobby" value="sports">스포츠
						<input type="checkbox" name="hobby" value="reading">독서
						<input type="checkbox" name="hobby" value="drawing">그림
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>