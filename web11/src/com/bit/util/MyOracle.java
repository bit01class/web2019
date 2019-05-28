package com.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyOracle {
	
	public static Connection getConnection(){
		Connection conn=null;
		final String DRIVER="oracle.jdbc.driver.OracleDriver";
		final String URL="jdbc:oracle:thin:@localhost:1521:xe";
		final String USER="hr";
		final String PASSWORD="hr";
		
		try {
			Class.forName(DRIVER);
			conn=DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버로드 오류 - ojdbc14.jar를 확인하세요");
		} catch (SQLException e) {
			System.out.println("오라클접속정보를 확인하세요");
		}
		
		return conn;
	}
}












