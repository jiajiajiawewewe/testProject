package com.wisdom.servlet.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.*;
import com.wisdom.beans.Article;
import com.wisdom.dao.ArticleDao;

/**
 * Servlet implementation class ListArticleServlet
 */
@WebServlet("/admin/ListArticle")
public class ListArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    com.wisdom.dao.ArticleDao articleDao = new ArticleDao();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response是响应
		request.setCharacterEncoding("utf-8");
		List<Article> articleList = articleDao.findAll();
		request.setAttribute("articles", articleList);
		request.getRequestDispatcher("List_Articles.jsp").forward(request, response);
	}

}
