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
	<h2>include 디렉티브와 액션태그 include의 차이</h2>

	<%@ include file="template/item1.jspf" %>
	<jsp:include page="template/item2.jsp">
		<jsp:param value="한글" name="test"/>
	</jsp:include>
	
	
	
	<h2>UseBean태그</h2>
	<jsp:useBean id="beanName" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="beanName"/>
	
	
	
	
	
	<ul>
		<li><%=beanName %></li>
		<li><jsp:getProperty property="sub" name="beanName"/></li>
		<li><jsp:getProperty property="num" name="beanName"/></li>
	</ul>

<jsp:include page="template/footer.jsp"></jsp:include>
</body>
</html>














