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
			<h2>입력 페이지</h2>
			<form action="add.bit" method="post">
				<div>
					<label for="sub">sub</label>
					<input type="text" name="sub" id="sub" />
				</div>
				<div>
					<label for="name">name</label>
					<span><%=session.getAttribute("id") %></span>
				</div>
				<div>
					<label for="pay">pay</label>
					<input type="text" name="pay" id="pay" />
				</div>
				<div>
					<button type="submit">입력</button>
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














