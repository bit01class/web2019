package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Guest01Dao {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="hr";
	String password="hr";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public ArrayList<Guest01Dto> getList(){
		ArrayList<Guest01Dto> list =new ArrayList<Guest01Dto>();
		String sql="select * from guest01";
		
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Guest01Dto bean=new Guest01Dto();
				bean.setNum(rs.getInt("num"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public void Insert(String sub,String nalja, int pay){
		String sql="insert into guest01 values (guest01_seq.nextval,?,to_date(?,'yyyy-mm-dd'),?)";
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, nalja);
			pstmt.setInt(3, pay);
			int result=pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}


















