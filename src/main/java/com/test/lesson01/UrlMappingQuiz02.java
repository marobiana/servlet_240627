package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 인코딩 - response header
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		// 현재 시간은 14시 52분 43초 입니다.
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		
		PrintWriter out = response.getWriter();
		out.println(sdf.format(date));
	}
}
