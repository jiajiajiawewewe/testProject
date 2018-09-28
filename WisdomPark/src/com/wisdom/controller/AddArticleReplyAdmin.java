package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Article;
import com.wisdom.beans.User;
import com.wisdom.dao.ArticleDao;

@WebServlet("/addReplyServletadmin")
public class AddArticleReplyAdmin extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArticleDao articleDao = new ArticleDao();
		String id=request.getParameter("id");
		System.out.println(id);
		Article article=articleDao.getArticle(id);
		request.setAttribute("article", article);
		/*
		 将article传给modify.jsp
		 */
		
	 	request.getRequestDispatcher("addReplyArticleAdmin.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doGet(request,response);
	}


}
 