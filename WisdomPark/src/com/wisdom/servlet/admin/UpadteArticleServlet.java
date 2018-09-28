package com.wisdom.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wisdom.*;
import com.wisdom.beans.Article;
import com.wisdom.dao.ArticleDao;

public class UpadteArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
request.setCharacterEncoding("utf-8");

		String content=request.getParameter("content");
		String title=request.getParameter("title");
		String articleId=request.getParameter("articleId");
		//String lastUpatePerson=request.getParameter("lastUpatePerson");
		HttpSession session=request.getSession();
		String lastUpatePerson=(String) session.getAttribute("adminLoginUser");
		ArticleDao articleDao = new ArticleDao();
	//	articleDao.UpdateArticle(articleId,title,content,lastUpatePerson);
		//跳转到查询页面，就是list.jsp
		response.sendRedirect(request.getContextPath()+"/adminlist");
		
	}

	
	

}
