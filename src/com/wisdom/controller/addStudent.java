package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.sun.mail.iap.Response;
import com.wisdom.beans.Student;
import com.wisdom.dao.StudentDao;
@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentDao dao=new StudentDao();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("添加成功");
		
		request.setCharacterEncoding("utf-8");
		 String xuehao=request.getParameter("xuehao");
		 String name=request.getParameter("name");
			String sex=request.getParameter("sex");
			String fangxiang=request.getParameter("fangxiang");
			String birth=request.getParameter("birth");
			
	
		StudentDao dao=new StudentDao();
			dao.addStudent(xuehao, name, 1, sex, birth, fangxiang);
			System.out.println("存入数据库的信息学号为："+xuehao);
			
			List<Student> stulist=dao.findAllStudent();
			//吧数据存储到request域对象中
			request.setAttribute("studentlist1", stulist);
			System.out.println(request.getContextPath());
			
				//页面条状到首页的JSP页面s
				request.getRequestDispatcher("studentList.jsp").forward(request, response);
				String dataString = "['username' : '离线']";
				response.getWriter().write(dataString);
			}
		
	

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
