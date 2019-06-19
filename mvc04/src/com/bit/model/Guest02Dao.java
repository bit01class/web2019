package com.bit.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class Guest02Dao {
//	<Resource
//	auth="Container"
//	type="javax.sql.DataSource" 
//	name="jdbc/oracle"
//	driverClassName="oracle.jdbc.driver.OracleDriver"
//	url="jdbc:oracle:thin:@localhost:1521:xe" 
//	username="hr" 
//	password="hr"
//	maxWait="3000"
//	minIdle="10"
//	maxIdle="100"
//	maxActive="200"
//	/>

	public ArrayList<Guest02Dto> getList(){
		ArrayList<Guest02Dto> list=new ArrayList<Guest02Dto>();
		String sql="select num,sub,(select name from user02 ";
		sql+=" where num=unum) as uname,pay from GUEST02";
		javax.sql.DataSource source=null;
		try {
			InitialContext init = new InitialContext();
			Context context=(Context)init.lookup("java:/comp/env");
			source=(javax.sql.DataSource) context.lookup("jdbc/oracle");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=source.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Guest02Dto bean=new Guest02Dto();
				bean.setNum(rs.getInt("num"));
				bean.setSub(rs.getString("sub"));
				bean.setName(rs.getString("uname"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
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
}

















