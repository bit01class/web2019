<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('button[type="button"]').click(function(){
			window.history.back();
		});
	});

</script>
</head>
<body>
	<h1>입력 페이지</h1>
	<form method="post">
		<div>
			<label for="sub">sub</label>
			<input type="text" name="sub" />
		</div>
		<div>
			<label for="nalja">nalja</label>
			<input type="date" name="nalja" />
		</div>
		<div>
			<label for="pay">pay</label>
			<input type="text" name="pay" />
		</div>
		<div>
			<button type="submit">입력</button>
			<button type="reset">취소</button>
			<button type="button">뒤로</button>
		</div>
	</form>
</body>
</html>






