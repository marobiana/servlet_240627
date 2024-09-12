<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST METHOD 폼태그</title>
</head>
<body>
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까?
		<input type="text" name="nickname"><br><br>
		2. 취미는 무엇입니까?
		<input type="text" name="hobby"><br><br>
		3. 강아지 or 고양이?
		<label>강아지<input type="radio" name="animal" value="dog"></label>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<br><br>
		
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label>민트초코<input type="checkbox" name="food" value="mincho"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="pupa"></label>
		<br><br>
		
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit">
			<option>사과</option>
			<option>복숭아</option>
			<option>파인애플</option>
			<option>체리</option>
			<option>참외</option>
		</select><br><br>
		
		<input type="submit" value="제출">
	</form>
</body>
</html>



