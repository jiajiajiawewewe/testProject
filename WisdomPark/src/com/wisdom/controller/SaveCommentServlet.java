package com.wisdom.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Article;
import com.wisdom.dao.ArticleDao;

/**
 * Servlet implementation class SaveCommentServlet  旧帖子进去回复
 */
@WebServlet("/SaveComment")
public class SaveCommentServlet extends HttpServlet {	
	private static final long serialVersionUID = 1L;
	ArticleDao articleDao = new ArticleDao();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Article article = articleDao.findArticle(id);
		
		List<Article> articleReplys = articleDao.findArticleReplys(id);
		request.setAttribute("article", article);
		request.setAttribute("articleReplys", articleReplys);
		
		request.getRequestDispatcher("/WEB-INF/jsp/comment.jsp").forward(request, response);
	}
}
