package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Guest02Dao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private void getConnection(){
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String password="hr";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void add(String sub,int unum,int pay,String id,String pw,String name){
		getConnection();
		try {
			conn.setAutoCommit(false);
			addGuest(sub,unum,pay);
			addUser(id,pw,name);
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			try {
				conn.setAutoCommit(true);
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void addGuest(String sub,int unum,int pay) throws SQLException{
		String sql="insert into guest02 values ";
		sql+=" (guest02_seq.nextval,?,?,sysdate,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, sub);
		pstmt.setInt(2, unum);
		pstmt.setInt(3, pay);
		int result=pstmt.executeUpdate();
	}
	public void addUser(String id,String pw,String name) throws SQLException{
		String sql="insert into user02 values (user02_seq.nextval,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		int result=pstmt.executeUpdate();
		
	}
	
}

















