package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Policy;
import com.wisdom.beans.User;
import com.wisdom.dao.PolicyDao;
import com.wisdom.dao.UserDao;
@WebServlet("/searchUser")
public class SearchUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao dao=new UserDao();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("进入搜索");
		request.setCharacterEncoding("utf-8");
		String UserSearch=request.getParameter("UserSearch");
		System.out.println(UserSearch);
		List<User> useSearchlist=dao.findAllRo(UserSearch);
		request.setAttribute("UserRoleSearch", UserSearch);
		request.setAttribute("useSearchlist", useSearchlist);
	System.out.println(useSearchlist.get(0).getName());
		request.getRequestDispatcher("searchUseR.jsp").forward(request, response);
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
doGet(request, response);
	}

}
