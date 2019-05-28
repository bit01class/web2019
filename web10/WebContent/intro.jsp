<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="template/header.jsp"></jsp:include>
<jsp:include page="template/menu.jsp"></jsp:include>
	<%request.setCharacterEncoding("EUC-KR"); %>
	<h1>include 디렉티브와 액션태그 include의 차이</h1>

	<%@ include file="template/item1.jspf" %>
	<jsp:include page="template/item2.jsp">
		<jsp:param value="한글" name="test"/>
	</jsp:include>
	

<jsp:include page="template/footer.jsp"></jsp:include>
</body>
</html>














