<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.bit.model.Guest02Dto"%>
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
	#content>div{
		width: 600px;
		height: 400px;
		margin: 0px auto;
		border: 1px solid gray;
	}
	#content td>a{
		display: block;
		text-decoration: none;
	}
</style>
<!--
CDN () 
jquery site -> download -> jquery CDN -> jQuery 1.x
jQuery Core 1.12.4 - uncompressed, minified 
-->
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$('#content>table+button').click(function(){
			window.location.href='add.bit';
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
			<h2>리스트페이지</h2>
			<table>
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>금액</th>
					</tr>
				</thead>
				<tbody>
				<%
				ArrayList<Guest02Dto> list=null;
				list=(ArrayList<Guest02Dto>)request.getAttribute("list");
				for(Guest02Dto bean:list){				
				%>
				<tr>
					<td><a href="detail.bit?idx=<%=bean.getNum() %>"><%=bean.getNum() %></a></td>
					<td><a href="detail.bit?idx=<%=bean.getNum() %>"><%=bean.getSub() %></a></td>
					<td><a href="detail.bit?idx=<%=bean.getNum() %>"><%=bean.getName() %></a></td>
					<td><a href="detail.bit?idx=<%=bean.getNum() %>"><%=bean.getPay() %></a></td>
				</tr>
				<%
				}
				%>
				</tbody>
			</table>
			<button>입력</button>		
		</div>
		<div id="footer">
		Copyright &copy; 비트캠프 All rights reserved.
		</div>	
	</div>
</body>
</html>

















