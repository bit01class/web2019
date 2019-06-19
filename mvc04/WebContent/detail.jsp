<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bit.model.Guest02Dto"%>
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
		$('button').hide().eq(0).show().click(function(){
			$('button').show();
			$(this).hide();
			$('input[type=hidden]').each(function(idx,ele){
				if(idx>0){
					$(ele).attr('type','text');
					$('label+span').hide();
				}
			});
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
			<%
			Guest02Dto bean=(Guest02Dto)request.getAttribute("bean");
			%>
			<h2>상세 페이지</h2>
			<form action="detail.bit" method="post">
				<div>
					<label for="num">num</label>
					<span><%=bean.getNum() %></span>
					<input type="hidden" name="num" id="num" />
				</div>
				<div>
					<label for="sub">sub</label>
					<span><%=bean.getSub() %></span>
					<input type="hidden" name="sub" id="sub" />
				</div>
				<div>
					<label for="unum">unum</label>
					<span><%=bean.getName() %></span>
					<input type="hidden" name="unum" id="unum" />
				</div>
				<div>
					<label for="pay">pay</label>
					<span><%=bean.getPay() %></span>
					<input type="hidden" name="pay" id="pay" />
				</div>
				<div>
					<button type="button">수정</button>
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









