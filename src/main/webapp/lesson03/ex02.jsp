<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%--
		flow
		1) 유저 추가: ex02.jsp(input 폼화면) -> InsertEx02 서블릿(DB insert) -> ex02_1.jsp(유저 목록, DB select)
	 --%>
	 <form method="post" action="/lesson03/insert_ex02">
	 	<p>
	 		<b>이름</b>
	 		<input type="text" name="name">
	 	</p>
	 	<p>
	 		<b>생년월일</b>
	 		<input type="text" name="yyyymmdd">
	 	</p>
	 	<p>
	 		<b>이메일</b>
	 		<input type="text" name="email">
	 	</p>
	 	<p>
	 		<b>자기소개</b><br>
	 		<textarea rows="5" cols="50" name="introduce"></textarea>
	 	</p>
	 	<input type="submit" value="가입">
	 </form>
</body>
</html>



