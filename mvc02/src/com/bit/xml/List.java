package com.bit.xml;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.util.MyOracle;

public class List extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("application/xml; charset=\"utf-8\"");
		PrintWriter out = resp.getWriter();
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.println("<bbs05>");
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement("select * from bbs05 order by num desc");
			rs=pstmt.executeQuery();
			while (rs.next()){
out.println("	<row>");
out.println("		<num>"+rs.getInt("num")+"</num>");
out.println("		<sub>"+rs.getString("sub")+"</sub>");
out.println("		<content>"+rs.getString("content")+"</content>");
out.println("		<name>"+rs.getString("name")+"</name>");
out.println("		<nalja>"+rs.getDate("nalja")+"</nalja>");
out.println("	</row>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		out.println("</bbs05>");
		out.close();
	}
	
}







