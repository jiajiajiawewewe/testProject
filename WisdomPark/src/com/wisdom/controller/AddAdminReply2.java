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
@WebServlet("/saveRelyAdmin")
public class AddAdminReply2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ArticleDao articleDao = new ArticleDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String content = request.getParameter("content");
		String parentArticleId = request.getParameter("articleId");
		
		User user=(User)request.getSession().getAttribute("user");
		String status = "0";
		String createPerson ="管理员"; 
		System.out.println(status);
		articleDao.addArticleReply(content, parentArticleId, createPerson,status);
		articleDao.updateArticleReplyAmount(parentArticleId);
	 	
		response.sendRedirect(request.getContextPath()+"/adminListAtricle");	}

}
