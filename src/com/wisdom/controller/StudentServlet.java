package com.wisdom.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.wisdom.beans.Student;
import com.wisdom.dao.StudentDao;
@WebServlet("/student_all")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentDao dao=new StudentDao();

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("跳入student列表list servlet");
		
		List<Student> stulist=dao.findAllStudent();
		//吧数据存储到request域对象中
		request.setAttribute("studentlist1", stulist);
		System.out.println(request.getContextPath());
		try {

			//页面条状到首页的JSP页面s
			request.getRequestDispatcher("studentList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}


}
