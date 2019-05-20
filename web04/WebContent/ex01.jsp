<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- 디렉티브 - JSP 페이지에 대한 설정 정보를 지정 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트 구성요소</h1>
	<%!
	public void func(){
		
	}
	%><!-- 선언부(Declaration) - 자바 메서드(함수)를 정의 -->
	<%
		// 내장객체는 스크립트릿에서 사용되는
		// jsp 작성을 위한 기본 기능
		int a=4321;
		out.print(a+1);
		System.out.println(a+2);
	%>	<!-- 스크립트릿(Scriptlet) - 자바 코드를 실행 -->
	<p><%=a %></p> <!-- 표현식 - 값을 출력 -->
	
	
</body>
</html>














