<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body><%
	String pw=request.getParameter("pw");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String sel=request.getParameter("sel");
	String area=request.getParameter("area");
	//area=area.replace("\n", "<br>");
	
	String ra=request.getParameter("ra");
	String[] ch=request.getParameterValues("ch");
	
	java.util.Enumeration names=request.getParameterNames();
	while(names.hasMoreElements()){
		System.out.println(names.nextElement());
	}
	System.out.println("------------------------------");
	java.util.Map map=request.getParameterMap();
	java.util.Set keys=map.keySet();
	java.util.Iterator ite = keys.iterator();
	while(ite.hasNext()){
		String key=(String)ite.next();
		String[] vals=(String[])map.get(key);
		System.out.println(key+":"+vals[0]);
	}
	
	System.out.println("---------header-------------");
	java.util.Enumeration hnames=request.getHeaderNames();
	while(hnames.hasMoreElements()){
		//System.out.println(hnames.nextElement());
		String head=(String)hnames.nextElement();
		System.out.println(head+","+request.getHeader(head));
	}
	
	%>
	<h1>파라미터 읽기</h1>
	<p>id:<%=id %></p>
	<p>pw:<%=pw %></p>
	<p>name:<%=name %></p>
	<p>sel:<%=sel %></p>
	<p>radio:<%=ra %></p>
	<p>chack:<%
	if(ch!=null){
		for(int i=0; i<ch.length; i++){
			out.print(ch[i]+" ");
		}
	}else{
		out.print("No Selected");
	}
	%></p>
	<p><pre><%=area %></pre></p>
	
</body>
</html>












