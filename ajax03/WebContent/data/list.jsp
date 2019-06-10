<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.ArrayList,com.bit.dto.Bbs04Bean,com.bit.dao.Bbs04Dao"%>{"root":[
	
	<%
	Bbs04Dao dao=new Bbs04Dao();
	ArrayList<Bbs04Bean> list=dao.getList();
	for(int i=0; i<list.size(); i++){
		Bbs04Bean bean=list.get(i);
		if(i!=0){
			out.print(',');
		} %>{"num":<%=bean.getNum() %>,"sub":"<%=bean.getSub() %>","nalja":"<%=bean.getNalja() %>"}
	<%} %>
]}
