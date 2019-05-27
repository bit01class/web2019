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
	private int re_ref,re_seq,re_lev;
	
	// 마우스 우클릭 > Source > Getters and Setters
	public int getRe_lev() {
		return re_lev;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	
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
















