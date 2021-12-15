<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초1</title>
</head>
<body>

	<%--
	
		- 폼 전송을 통해서 넘어 오는 데이터는 request객체를 통해서 전달을 받는다.
		- 페이지의 encoding설정 외에 request객체의 encoding을 추가로 지정해 주어야한다.
		- request.getParameter(); 메소드를 통해서 form을 통해 넘어온 데이터의 name속성 값을 가져온다.
		- request.getParameter(); 의 기본 반환타입은 문자열이다. 정수 데이터 타입일 경우 형변환을 해주어야 한다.
	
	 --%>

	<% 
	
		request.setCharacterEncoding("utf-8");
		
		String language      = request.getParameter("language");
		String reason        = request.getParameter("reason");
		//String languageCount = request.getParameter("languageCount"); 			    // 문자열
		int languageCount    = Integer.parseInt(request.getParameter("languageCount")); // 정수
	
		System.out.println("자신 있는 언어 : " + language);
		System.out.println("자신 있는 이유 : " + reason);
		System.out.println("공부하였던 언어의 개수 : " + languageCount);
		
	%>

	<h3>데이터 전송 확인</h3>
	<a href="formEx01.jsp">이전으로 이동하기</a>

</body>
</html>