package com.wisdom.test;

import java.util.Date;
import java.util.List;

import com.wisdom.beans.Student;
import com.wisdom.beans.User;
import com.wisdom.dao.StudentDao;
import com.wisdom.dao.UserDao;

public class TestDao {
	static void addTest(){
		StudentDao dao=new StudentDao();
		java.sql.Date birth=new java.sql.Date(new java.util.Date().getTime());
		String  b= birth.toString();
		//addStudent( String xuehao,String name, String age,String sex,String birth,String fangxiang)
		//dao.addStudent("fff", "nff", "33","鐢�", b,"ss");
		//dao.addStudent("122", "name22", "33", "鐢�,"ff", 鈥渏ava璇█鈥�;
	}
	
	static void  login(){
		UserDao dao=new UserDao();
		User u=dao.validate("admin", "123456","");
		if(u==null) System.out.println("璐﹀彿鎴栬�瀵嗙爜閿欒");
		else{
			System.out.println("鐧诲綍鎴愬姛杩涘叆绠＄悊椤甸潰");
			System.out.println("鎴戠殑瑙掕壊鏄�"+u.getRole());
		}
		
	}
	
	static void findAll(){
		StudentDao dao=new StudentDao();
		List<Student> list=dao.findAllStudent();
		for (Student student : list) {
			System.out.println(student.toString());
		}
		
	}
	
public static void main(String[] args) {
	findAll();
}
}
