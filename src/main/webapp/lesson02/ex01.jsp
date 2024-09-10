<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>JSP</h1>
	
	<!-- HTML 주석: 소스보기에서 보임 -->
	<%-- jsp 주석: 소스보기에서 안 보임 --%>
	
	<%
		// 자바 문법 시작
		// scriptlet
		
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<b>합계:</b>
	<input type="text" value="<%= sum %>">
	
	<hr>
	
	<%!
		// 선언문 - 클래스 같은 느낌
		
		// 필드
		int num = 100;
		
		// 메소드
		public String getHelloWorld() {
			return "hello world!";
		}
	%>
	
	<%= num + 200 %>
	<br>
	<%= getHelloWorld() %>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	%>
</body>
</html>



