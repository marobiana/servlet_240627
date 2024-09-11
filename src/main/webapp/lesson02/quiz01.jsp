<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%!
		// 필드 X
		
		// 메소드
		// input: N(끝 수, 정수)
		// output: 합계(정수)
		public int getSum(int end) {
			int sum = 0;
			for (int i = 1; i <= end; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	<%
		// 2.
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) { // 0 ~ 4
			sum += scores[i];
		}
		double average = (double)sum / (double)scores.length;
	%>
	
	<%
		// 3.
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		Iterator<String> iter = scoreList.iterator();
		int score = 0;
		while (iter.hasNext()) {
			String answer = iter.next();
			if (answer.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
		
		// 4
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		//out.print(yearStr);
		int age = 2024 - Integer.valueOf(yearStr);
	%>
	
	<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>
	<h2>평균 점수는 <%= average %> 입니다.</h2>
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
</body>
</html>




