package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.dto.Bbs04Bean;
import com.bit.util.MyOracle;

public class Bbs04Dao {

	public ArrayList<Bbs04Bean> getList() throws SQLException{
		ArrayList<Bbs04Bean> list=new ArrayList<Bbs04Bean>();
		String sql="SELECT * FROM BBS04 ORDER BY NUM DESC";
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
				bean.setContent(rs.getString("content"));
				bean.setNalja(rs.getString("nalja"));
				list.add(bean);
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
}

















