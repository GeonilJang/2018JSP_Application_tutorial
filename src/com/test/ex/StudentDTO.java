package com.test.ex;

import java.sql.Timestamp;

public class StudentDTO {
	private String hakbun;
	private String pw;
	private String name;
	private String hp;
	
	
	public StudentDTO() {
		System.out.println("Student()");
	}
	
	
	public StudentDTO(String hakbun, String pw, String name, String hp) {
		this.hakbun = hakbun;
		this.pw = pw;
		this.name = name;
		this.hp = hp;
	}


	//set---
	public void setHakbun(String hakbun) {
		System.out.println("setHakbun():"+hakbun);
		this.hakbun = hakbun;
	}


	public void setPw(String pw) {
		System.out.println("setPw():"+pw);
		this.pw = pw;
	}

	
	public void setName(String name) {
		System.out.println("setName():"+name);
		this.name = name;
	}


	public void setHp(String hp) {
		System.out.println("setHp():"+hp);
		this.hp = hp;
	}
	

	//get--
	public String getHp() {
		return hp;
	}
	public String getName() {
		return name;
	}

	public String getPw() {
		return pw;
	}

	public String getHakbun() {
		return hakbun;
	}
}
