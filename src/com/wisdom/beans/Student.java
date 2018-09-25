package com.wisdom.beans;


public class Student{
	private String xuehao;
	private String name;
	private int age;
	private String sex;
	private String fangxiang;
	private String birth;
	public String getXuehao() {
		return xuehao;
	}
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getFangxiang() {
		return fangxiang;
	}
	public void setFangxiang(String fangxiang) {
		this.fangxiang = fangxiang;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "Student [xuehao=" + xuehao + ", name=" + name + ", age=" + age
				+ ", sex=" + sex + ", fangxiang=" + fangxiang + ", birth="
				+ birth + "]";
	}
	
	
	
	
}
