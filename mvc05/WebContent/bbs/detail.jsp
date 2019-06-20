<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.bit.model.Guest02Dto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/frame.css" />
<style type="text/css">
#content >h2{
	text-align: center;
}
#content>table{
	border-collapse: collapse;
	width: 80%;
	margin: 0px auto;
	border:1px solid gray;
}
#content>table>thead{}
#content>table>thead>tr>th{
	border:1px solid gray;
}
#content>table>tbody{}
#content>table>tbody>tr>td{
	border:1px solid gray;
}
</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#content>form input').hide();
		$('#content>form button').hide().eq(0).show().click(function(){
			$('#content>form').prev().text('수정 페이지');
			$('#content>form input').show().prev('span').hide();
			$('#content>form button').show().eq(0).hide();
		});
		
	});
</script>
</head>
<body>
	<div>
		<div id="header">
			<h1>비트교육센터</h1>
		</div>
		<div id="menu">
			<% String root=request.getContextPath(); %>
			<ul>
				<li><a href="<%=root %>/">HOME</a></li>
				<li><a href="<%=root %>/intro.bit">INTRO</a></li>
				<li><a href="<%=root %>/bbs/list.bit">BBS</a></li>
				<%if(session.getAttribute("result")==null){ %>
				<li><a href="<%=root %>/login/form.bit">Login</a></li>
				<% }else{%>
				<li><a href="<%=root %>/login/logout.bit">Logout</a></li>
				<%} %>
			</ul>
		</div>
		<div id="content">
			<h2>상세페이지</h2>
			<%
			Guest02Dto bean=(Guest02Dto)request.getAttribute("bean");
			%>
			<form action="update.bit" method="post">
				<div>
					<label for="num">num</label>
					<span><%=bean.getNum() %></span>
					<input type="text" name="num" id="num" value="<%=bean.getNum() %>" />
				</div>
				<div>
					<label for="sub">sub</label>
					<span><%=bean.getSub() %></span>
					<input type="text" name="sub" id="sub" value="<%=bean.getSub() %>" />
				</div>
				<div>
					<label for="name">name</label>
					<span><%=bean.getName() %></span>
				</div>
				<div>
					<label for="nalja">nalja</label>
					<span><%=bean.getNalja() %></span>
				</div>
				<div>
					<label for="pay">pay</label>
					<span><%=bean.getPay() %></span>
					<input type="text" name="pay" id="pay" value="<%=bean.getPay() %>" />
				</div>
				<div>
					<button type="button">수정</button>
					<button type="submit">수정</button>
					<button type="reset">취소</button>
					<button type="button">뒤로</button>
				</div>
			</form>
		</div>
		<div id="footer">
		Copyright &copy; 비트캠프 All rights reserved.
		</div>	
	</div>
</body>
</html>














