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
			System.out.println("����̹��ε� ���� - ojdbc14.jar�� Ȯ���ϼ���");
		} catch (SQLException e) {
			System.out.println("����Ŭ���������� Ȯ���ϼ���");
		}
		
		return conn;
	}
}












