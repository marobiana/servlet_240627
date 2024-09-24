package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// request param
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// db 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// db insert
		String insertQuery = "insert into `bookmark`(`name`, `url`, `createdAt`, `updatedAt`)"
				+ "values ('" + name + "', '" + url + "', now(), now())";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 연결 해제
		mysqlService.disconnect();
		
		// 목록 페이지 이동 redirect
		response.sendRedirect("/lesson03/bookmark_list.jsp");
	}
}
