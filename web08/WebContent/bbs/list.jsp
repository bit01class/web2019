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
	<form>
		<select name="limit">
			<option value="10">10개씩</option>
			<option value="25">25개씩</option>
			<option value="50">50개씩</option>
		</select>
		<input type="submit" value="보기">
	</form>
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
		String param1=request.getParameter("page");
		String param2=request.getParameter("limit");
		if(param1==null)param1="1";
		int p=Integer.parseInt(param1);
		if(param2==null)param2="10";
		int limit=Integer.parseInt(param2);
		class Rows{
			int num;
			String sub;
			String id;
			java.sql.Date nalja;
	    }
		List<Rows> list=new ArrayList<Rows>();
		String sql="select * from (select rownum as rn";
		sql+=",num,sub,id,nalja from (select * from bbs03 ";
		sql+="order by num desc)) where rn>="+(((p-1)*limit)+1);
		sql+=" and rn<="+(((p-1)*limit)+1+limit-1);
		
		//System.out.println(sql);
		
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
			<td><a href="detail.jsp?idx=<%=row.num %>"><%=row.sub %></a></td>
			<td><%=row.id %></td>
			<td><%=row.nalja.getMonth()+"월"+row.nalja.getDate()+"일" %></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<center>
	<%
	int total=0;
	
	sql="select count(*) as cnt from bbs03";
	try{
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		if(rs.next())total=rs.getInt("cnt");
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	int start=((p-1)/5)*5;
	int end=total/limit;
	if(total%limit!=0){
		end++;
	}
	int end2=end;
	if(start+5<end){
		end=start+5;
	}
	if(start>0){
	%><a href="list.jsp?page=<%=start-1%>&limit=<%=limit%>">[이전]</a><%
	}
	for(int i=start; i<end; i++){
	%><a href="list.jsp?page=<%=i+1%>&limit=<%=limit%>">[<%=i+1%>]</a><%
	}
	if(end+1<=end2){
	%><a href="list.jsp?page=<%=end+1%>&limit=<%=limit%>">[다음]</a><%} %>
	</center>
	<br><br>
	<a href="add.jsp">[입 력]</a>
	<br><br>
<%@ include file="../template/footer.jspf" %>
</body>
</html>


















