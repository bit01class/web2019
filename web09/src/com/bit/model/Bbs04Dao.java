package com.bit.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.db.MyOracle;

public class Bbs04Dao {
	
	public ArrayList<Bbs04Bean> getList() throws SQLException{
		String sql="SELECT * FROM BBS04 ORDER BY NUM DESC";
		ArrayList<Bbs04Bean> list=new ArrayList<Bbs04Bean>();
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{ 
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Bbs04Bean bean=new Bbs04Bean();
				bean.setNum(rs.getInt("num"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("nalja"));
				list.add(bean);
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	public int addList(String sub,String content) throws SQLException{
		String sql="INSERT INTO BBS04 VALUES (BBS04_SEQ.NEXTVAL,?,?,SYSDATE)";
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=MyOracle.getConnection();			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, content);
			int result=pstmt.executeUpdate();
			return result;
		} finally {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public Bbs04Bean detail(int num) throws SQLException{
		String sql="select * from bbs04 where num=?";
		Bbs04Bean bean=new Bbs04Bean();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setNum(rs.getInt("num"));
				bean.setSub(rs.getString("sub"));
				bean.setContent(rs.getString("content"));
				bean.setNalja(rs.getDate("nalja"));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return bean;
	}
}




















