package com.bit.model;

import java.sql.Date;

public class Bbs04Bean {
	// javaBean class
	// java : javaBean
	// web : Dto
	// framework : Vo
	
	private int num;
	private String sub;
	private Date nalja;
	private String content;
	
	// 마우스 우클릭 > Source > Getters and Setters
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getNum() {
		return num;
	}
	public String getSub() {
		return sub;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
	
}
















