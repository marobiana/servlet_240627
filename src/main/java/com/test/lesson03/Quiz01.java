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

@WebServlet("/lesson03/quiz01")
public class Quiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// response header
		response.setContentType("text/plain");
		
		// db 접속
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // 실질적인 연결
		
		// 행 추가
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`)"
				+ "values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// select & 출력
		String selectQuery = "select * from `real_estate`"
				+ "order by `id` desc "
				+ "limit 10";
		try {
			PrintWriter out = response.getWriter();
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
				out.println("매물주소:" + res.getString("address") 
				+ ", 면적:" + res.getInt("area") 
				+ ", 타입:" + res.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 해제
		ms.disconnect();
	}
}
