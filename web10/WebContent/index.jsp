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

<jsp:useBean id="beanName" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
<ul>
	<li><%=beanName %></li>
	<li><jsp:getProperty property="sub" name="beanName"/></li>
	<li><jsp:getProperty property="num" name="beanName"/></li>
</ul>
<!-- content -->


<img alt="main" src="imgs/main.jpg" width="100%">
				
<jsp:include page="template/footer.jsp"></jsp:include>
</body>
</html>








