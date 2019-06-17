<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.bit.model.Guest01Dto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('button').click(function(){
			window.location.href='add.bit';
		});
	});

</script>
</head>
<body>
	<h1>리스트페이지</h1>
	<table>
		<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		</thead>
		<tbody>
		<%
		ArrayList<Guest01Dto> list=(ArrayList<Guest01Dto>)request.getAttribute("alist");
		for(int i=0; i<list.size(); i++){
			Guest01Dto bean=list.get(i);
		%>
		<tr>
			<td><%=bean.getNum() %></td>
			<td><%=bean.getSub() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
		</tbody>
	</table>
	<button type="button">입 력</button>
</body>
</html>












