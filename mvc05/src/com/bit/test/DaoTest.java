package com.bit.test;

import java.sql.Connection;
import java.util.ArrayList;

import com.bit.model.Guest02Dao;
import com.bit.model.Guest02Dto;

public class DaoTest {

	public static void main(String[] args) {
		Guest02Dao dao=new Guest02Dao();
		Connection conn = dao.getConnection();
		System.out.println("Connection?"+(conn!=null));
		
		ArrayList<Guest02Dto> list = dao.getList();
		int last=0;
		for(Guest02Dto bean : list){
			int num=bean.getNum();
			if(last<num)last=num;
		}
		System.out.println("list?"+(list!=null));
		int size=list.size();
		System.out.println("list size>0?"+(size>0));
		
		dao=new Guest02Dao();
		Guest02Dto target=new Guest02Dto();
		target.setNum(last+1);
		target.setSub("new test1");
		target.setUnum(1);
		target.setPay(1111);
		
		dao.addList(target.getSub(),target.getUnum(),target.getPay());
		dao=new Guest02Dao();
		System.out.println("insert?"+(size+1==dao.getList().size()));
		
		System.out.println("target>>>"+target);
		dao=new Guest02Dao();
		
		list = dao.getList();
		last=0;
		for(Guest02Dto bean : list){
			int num=bean.getNum();
			if(last<num)last=num;
		}
		target.setNum(last);
		dao=new Guest02Dao();
		Guest02Dto bean = dao.getListOne(target.getNum());
		System.out.println("detail?"+bean.equals(target));
		System.out.println(bean);
		
		dao=new Guest02Dao();
		target.setSub("edit01");
		target.setPay(2222);
		System.out.println("update?"+(dao.editOne(target.getSub()
							, target.getPay(), target.getNum())>0));
		
		dao=new Guest02Dao();
		System.out.println("delete?"+(dao.deleteOne(target.getNum())>0));
	}

}



















