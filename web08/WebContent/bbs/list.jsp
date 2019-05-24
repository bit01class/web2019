<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
<%@ include file="../template/header.jspf" %>
	<h1>게시판 목록</h1>
	
	<table width="80%" border="1" cellspacing="0" align="center">
		<tr>
			<th width="80">글번호</th>
			<th>제목</th>
			<th width="100">글쓴이</th>
			<th width="100">날짜</th>
		</tr>
		
		<%
		// 1~10		p=1		((p-1)*10)+1+9
		// 11~20	p=2		((p-1)*10)+1
		// 21~30	p=3		((p-1)*10)+1
		String param=request.getParameter("page");
		if(param==null)param="1";
		int p=Integer.parseInt(param);
		class Rows{
			int num;
			String sub;
			String id;
			java.sql.Date nalja;
	    }
		List<Rows> list=new ArrayList<Rows>();
		String sql="select * from (select rownum as rn";
		sql+=",num,sub,id,nalja from (select * from bbs03 ";
		sql+="order by num desc)) where rn>="+(((p-1)*10)+1);
		sql+=" and rn<="+(((p-1)*10)+1+9);
		Class.forName(driver);
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try{
			conn=DriverManager.getConnection(url, user, password);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Rows row=new Rows();
				row.num=rs.getInt("num");
				row.sub=rs.getString("sub");
				row.id=rs.getString("id");
				row.nalja=rs.getDate("nalja");
				list.add(row);
			}
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		
		for(int i=0;i<list.size(); i++){
			Rows row=list.get(i);
		%>
		<tr>
			<td><%=row.num %></td>
			<td><%=row.sub %></td>
			<td><%=row.id %></td>
			<td><%=row.nalja.getMonth()+"월"+row.nalja.getDate()+"일" %></td>
		</tr>
		<%
		}
		%>
	</table>
<%@ include file="../template/footer.jspf" %>
</body>
</html>


















