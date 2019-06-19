<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body>div{
		width: 800px;
		margin: 0px auto;
	}
	#content>form{
		width: 600px;
		height: 400px;
		margin: 0px auto;
		border: 1px solid gray;
	}
</style>
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$('#content>form button[type=button]').click(function(){
			window.history.back();
		});
	});
</script>
</head>
<body>
	<div>
		<div id="header">
			<h1>로고이미지</h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="/mvc04/">HOME</a></li>
				<li><a href="/mvc04/intro">INTRO</a></li>
				<li><a href="/mvc04/bbs/list.bit">BBS</a></li>
				<li><a href="/mvc04/login">LOGIN</a></li>
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
					<label for="unum">unum</label>
					<input type="text" name="unum" id="unum" />
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









