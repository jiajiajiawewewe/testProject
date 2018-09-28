package com.wisdom.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Student;
import com.wisdom.dao.StudentDao;

/**
 * Servlet implementation class requestTest1
 */
@WebServlet("/requestTest1")
public class requestTest1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");//防止爱中文乱码
	response.setCharacterEncoding("utf-8");
	StudentDao dao=new StudentDao();
	List<Student> list=dao.findAllStudent();
	

	request.setAttribute("list", list);
		request.getRequestDispatcher("studentList.jsp").forward(request, response);
	}

}
