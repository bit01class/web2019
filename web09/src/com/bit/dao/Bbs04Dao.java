package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.db.MyOracle;

public class Bbs04Dao {
	
	public ArrayList getList() throws SQLException{
		String sql="select * from bbs04 order by num";
		ArrayList list=new ArrayList();
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{ 
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(rs.getInt("num"));
				list.add(rs.getString("sub"));
				list.add(rs.getDate("nalja"));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
}
