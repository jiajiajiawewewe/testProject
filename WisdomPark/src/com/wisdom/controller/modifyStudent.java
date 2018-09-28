package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Student;
import com.wisdom.dao.StudentDao;
@WebServlet("/updateOneStudent")
public class modifyStudent extends HttpServlet {
	StudentDao dao=new StudentDao();
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("跳入student修改servlet");
//存入数据库
		request.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		 String name=request.getParameter("name");
			String sex=request.getParameter("password");
			String fangxiang=request.getParameter("email");
			String birth=request.getParameter("phone");
		//	dao.updateStudent(xuehao, name, 1, sex, birth, fangxiang);
		
//跳入列表
			
	}
}
			
				
				
			
		 
	
	


