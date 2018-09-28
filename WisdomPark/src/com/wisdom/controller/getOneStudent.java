package com.wisdom.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Student;
import com.wisdom.dao.StudentDao;

/**
 * Servlet implementation class getOneStudent
 */
@WebServlet("/getOneStudent")
public class getOneStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String xuehao=request.getParameter("xuehao");
		StudentDao dao=new StudentDao();
		Student s=dao.getOneStudent(xuehao);
		request.setAttribute("s",s);
		System.out.println("我的学号是："+xuehao);
		
		request.getRequestDispatcher("updateStudent.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
