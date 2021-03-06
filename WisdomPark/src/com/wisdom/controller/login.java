package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wisdom.beans.User;
import com.wisdom.dao.UserDao;

public class login extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String use1="admin";
		String use2="user";
		String use3="admin2";
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		System.out.println(name+password+role);
		
		HttpSession session=request.getSession();
		
		UserDao dao=new UserDao();
		User u=dao.validate(name,password,role);
		if(u==null){ System.out.println("账号或者密码错误");
		request.getRequestDispatcher("login.jsp").forward(request, response);}
		else{
			session.setAttribute("user", u);
			session.setAttribute("name", u.getName());
			System.out.println("登录成功");
			
			if(role.equals(use1)){
				
				System.out.println("我的角色是:"+u.getRole());
			request.getRequestDispatcher("main.jsp").forward(request, response);
			}
			
			if(role.equals(use3))
			{
				
				System.out.println("我的角色是:"+u.getRole());
				request.getRequestDispatcher("main_new.jsp").forward(request, response);
			}
			
			if(role.equals(use2)){
				
				System.out.println("我的角色是:"+u.getRole());
			
			request.getRequestDispatcher("/WEB-INF/jsp/list.jsp").forward(request, response);}
			
		}
		
	}
}


