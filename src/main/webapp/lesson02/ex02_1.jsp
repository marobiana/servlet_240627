<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<b>아이디</b>
	<%= id %><br>
	<b>이름</b><%= name %><br>
	<b>나이</b><%= age %>
</body>
</html>





