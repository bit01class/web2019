package com.bit.xml;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Nalsee extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("½ÇÇàµÊ");
		
		URL url=new URL("http://www.kma.go.kr/servlet/NeoboardProcess?mode=stdxml&bid=press&url=http%3A%2F%2Fwww.kma.go.kr%2Fnotify%2Fpress%2Fkma_list.jsp&start_date=20190611&end_date=20190614");
		URLConnection conn = url.openConnection();
		InputStream is = conn.getInputStream();
		InputStreamReader isr=new InputStreamReader(is);
		BufferedReader br=new BufferedReader(isr);
		String temp=null;
		String msg="";
		while((temp=br.readLine())!=null){
			msg+=temp;
		}
		is.close();
		resp.setContentType("application/xml;charset=\"utf-8\""); 
		PrintWriter out = resp.getWriter();
		out.println(msg);
		out.close();
	}
}




















