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
@WebServlet("/addUSer")
public class addUser extends HttpServlet {

	
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
		
			System.out.println("添加用户开始");
			request.setCharacterEncoding("utf-8");
			String   name=request.getParameter("username");
			System.out.println("存入数据库的信息学号为："+name);
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String phone=request.getParameter("phone");
			String role="user";
			
          //  PrintWriter out = response.getWriter();
            //或:ServletOutputStream out = response.getOutputStream();
            //但两个不要一起用!
            

			
		UserDao dao=new UserDao();
			User u1=new User();
			u1=dao.getOneUserBynameByr(name, role);
			if(u1==null)
			{dao.addUser(name, password, email, phone,role);	
				request.getRequestDispatcher("/sign_success.jsp").forward(request, response);
			}
			if(u1!=null)
			{
				request.getRequestDispatcher("/sign_fail.jsp").forward(request, response);
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
