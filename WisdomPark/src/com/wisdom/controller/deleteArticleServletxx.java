package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.*;
import com.wisdom.beans.Article;
import com.wisdom.dao.ArticleDao;
@WebServlet("/deleteArticlexx")
public class deleteArticleServletxx extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArticleDao articleDao = new ArticleDao();
		String id=request.getParameter("id");
		System.out.println(id);
		articleDao.DeleteArticle(id);
		response.sendRedirect(request.getContextPath()+"/adminListAtricle");

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);

		
	}

}
