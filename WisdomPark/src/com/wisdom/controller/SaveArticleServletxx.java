package com.wisdom.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.User;
import com.wisdom.dao.ArticleDao;

/**
 * 发表话题
 */
@WebServlet("/saveOneArticlexx")
public class SaveArticleServletxx extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ArticleDao articleDao = new ArticleDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		User user=(User)request.getSession().getAttribute("user");
		String createPerson =user.getName(); 	
		articleDao.addArticle(title, content, createPerson);
			
		response.sendRedirect("/WisdomPark/adminListAtricle");
	}

}
