package com.wisdom.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.*;
import com.wisdom.beans.Article;
import com.wisdom.dao.ArticleDao;

public class deleteArticleServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArticleDao articleDao = new ArticleDao();
		String articleId=request.getParameter("articleId");
		System.out.println(articleId);
		articleDao.DeleteArticle(articleId);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);

		
	}

}
