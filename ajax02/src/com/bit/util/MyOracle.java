package com.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyOracle {
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String id="hr";
	private static String pw="hr";
	
	private MyOracle() {
	}
	
	public static Connection getConnection(){
		try {
			if(conn==null || conn.isClosed()){
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection(url,id,pw);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	} 
}
















