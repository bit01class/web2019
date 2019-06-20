<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/frame.css" />
<style type="text/css">
#content img {
	width: 100%;
}
</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('button[type=button]').click(function(){
			window.location.href='join.jsp';
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
				<li><a href="<%=root %>/index.jsp">HOME</a></li>
				<li><a href="<%=root %>/intro.jsp">INTRO</a></li>
				<li><a href="<%=root %>/bbs/list.jsp">BBS</a></li>
				<li><a href="<%=root %>/login/form.jsp">JOIN</a></li>
			</ul>
		</div>
		<div id="content">
			<h2>로그인페이지</h2>
			<form action="login" method="post">
				<div>
					<label for="id">id</label>
					<input type="text" name="id" id="id" />
				</div>
				<div>
					<label for="pw">pw</label>
					<input type="password" name="pw" id="pw" />
				</div>
				<div>
					<button type="submit">로그인</button>
					<button type="reset">취소</button>
					<button type="button">회원가입</button>
				</div>
			</form>
		</div>
		<div id="footer">
		Copyright &copy; 비트캠프 All rights reserved.
		</div>	
	</div>
</body>
</html>














