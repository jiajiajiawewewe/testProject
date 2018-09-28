package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.User;
import com.wisdom.dao.UserDao;
@WebServlet("/addAdmin")
public class addAdmin extends HttpServlet {

	
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
		
			System.out.println("添加管理员");
			String  name=request.getParameter("adminname");
			System.out.println("存入数据库的信息学号为："+name);
			String password=request.getParameter("passward");
			String email=null;
			String phone=null;
			String role=request.getParameter("role");
			
			
			
			UserDao dao=new UserDao();
			User u1=new User();
			u1=dao.getOneUserBynameByr(name, role);
			
			if(u1==null	){
			dao.addUser(name, password, email, phone,role);	
			request.getRequestDispatcher("success_addAdmin.jsp").forward(request, response);
			}
			else {
				System.out.println(u1.getPassword());
				System.out.println("用户已注册");
				request.getRequestDispatcher("fail_addAdmin.jsp").forward(request, response);
			}
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
