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
 * Servlet implementation class deleteOneStudent
 */
@WebServlet("/deleteOneStudent")
public class deleteOneStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String xuehao=request.getParameter("xuehao");
			StudentDao dao=new StudentDao();
			dao.deleteStudent(xuehao);
			
			List<Student> stulist=dao.findAllStudent();
			//吧数据存储到request域对象中
			request.setAttribute("studentlist1", stulist);
			System.out.println(request.getContextPath());
			

				//页面条状到首页的JSP页面s
				request.getRequestDispatcher("studentList.jsp").forward(request, response);
			
			
			
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			doGet(request, response);
		}

	}
