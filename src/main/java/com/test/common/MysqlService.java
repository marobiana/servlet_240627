package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	private static final String URL = "jdbc:mysql://localhost:3307/test_240627";
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// singleton 패턴: MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인패턴
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB connect
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(URL, ID, PASSWORD);
			
			// 3. statement: DB와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB disconnect
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// R
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// CUD => update
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}













