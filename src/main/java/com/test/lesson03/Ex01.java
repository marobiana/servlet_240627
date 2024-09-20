package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/ex01")
public class Ex01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// response header 세팅
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !!!!!!!!! 꼭 불러야함. 실질적인 DB 연결
		
		// 테이블 insert
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `description`, `price`)"
				+ "values"
				+ "(1, '고양이 간식 팝니다', '고양이가 입맛이 까다로워서 잘 안먹어요ㅠ', 2000)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 테이블 조회 및 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(selectQuery);
			while (res.next()) { // 결과 행이 있는 동안 수행
				out.println(res.getInt("id"));
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
}



