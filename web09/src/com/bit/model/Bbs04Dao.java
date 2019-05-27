package com.bit.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.db.MyOracle;

public class Bbs04Dao {
	
	public ArrayList<Bbs04Bean> getList() throws SQLException{
		String sql="SELECT * FROM BBS04 ORDER BY RE_REF DESC, RE_SEQ DESC";
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
				bean.setRe_lev(rs.getInt("re_lev"));
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
		String sql="INSERT INTO BBS04 VALUES (BBS04_SEQ.NEXTVAL,?,?,SYSDATE,bbs04_seq.currval,0,0)";
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
				bean.setRe_ref(rs.getInt("Re_ref"));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return bean;
	}
	
	public Bbs04Bean getTitle(int num) throws SQLException{
		Bbs04Bean bean=new Bbs04Bean();
		String sql="select sub,re_ref,re_seq,re_lev,num from bbs04 where num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSub(rs.getString(1));
				bean.setRe_ref(rs.getInt(2));
				bean.setRe_seq(rs.getInt(3));
				bean.setRe_lev(rs.getInt(4));
				bean.setNum(rs.getInt(5));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		
		return bean;
	}
	
	public void updateSeq() throws SQLException{
		String sql="SELECT BBS04_SEQ.NEXTVAL FROM DUAL";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void updateNum(int num) throws SQLException{
		String sql="UPDATE BBS04 SET NUM=NUM+1 WHERE NUM>=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void reAdd(int num,String sub,String content) throws SQLException{
		String sql="INSERT INTO BBS04 VALUES (?,?,?,SYSDATE)";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, sub);
			pstmt.setString(3, content);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void reAdd2(String sub,String content
							,int ref,int seq,int lev) throws SQLException{
		String sql1="update bbs04 set re_seq=re_seq+1 where re_ref=? and re_seq>=?";
		String sql2="insert into bbs04 values (bbs04_seq.nextval,";
			sql2+="?,?,sysdate,?,?,?)";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql1);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, seq);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql2);
			pstmt.setString(1, sub);
			pstmt.setString(2, content);
			pstmt.setInt(3, ref);
			pstmt.setInt(5, lev+1);
			pstmt.setInt(4, seq);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public int update(int num,String sub,String content) throws SQLException{
		int result=0;
		String sql="UPDATE BBS04 SET SUB=?,CONTENT=? WHERE NUM=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, content);
			pstmt.setInt(3, num);
			result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
	
	public int delete(int num) throws SQLException{
		int result=0;
		String sql="DELETE FROM BBS04 WHERE NUM=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
}




















