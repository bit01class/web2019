<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파일업로드</h1>
	<form action="upload.bit" method="post" enctype="multipart/form-data">
		<div>
			<label for="id">id</label>
			<input type="text" name="id" id="id" />
		</div>
		<div>
			<input type="file" name="myfile"/>
		</div>
		<div>
			<button type="submit">submit</button>
		</div>
	</form>
</body>
</html>
















