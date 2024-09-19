<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱-아이유</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
a, a:hover {text-decoration:none;}

header {height:100px;}
nav {height:40px;}
.contents {min-height:500px;}
footer {height:200px;}
</style>
</head>
<body>
	<div class="container">
		<header class="d-flex align-items-center">
			<%-- 로고 영역 --%>
			<div class="col-2">
				<h3><a href="/lesson02/quiz10.jsp" class="text-success">Melong</a></h3>
			</div>
			
			<%-- 검색 영역 --%>
			<div class="col-10">
				<div class="input-group">
					<input type="text" class="form-control col-5">
					<div class="input-group-append">
						<button class="btn btn-info" type="button">검색</button>
					</div>
				</div>
			</div>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		
		<section class="contents">
			<%-- 아티스트 정보 --%>
			<div class="d-flex border border-success p-3">
				<%-- 이미지 --%>
				<div>
					<img src="http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG" alt="가수 이미지" width="150">
				</div>
				<%-- 가수 정보 --%>
				<div class="ml-3">
					<h3>아이유</h3>
					<div>소속사</div>
					<div>데뷔 정보</div>
				</div>
			</div>
			
			<%-- 곡 목록 --%>
			<div class="music-list mt-3">
				<h3 class="font-weight-bold">곡 목록</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		
		<footer>
			<hr>
			<small class="text-secondary">Copyright 2024. melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>