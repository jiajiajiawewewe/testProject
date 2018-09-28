package com.wisdom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wisdom.beans.Enterapply;
import com.wisdom.beans.User;
import com.wisdom.dao.EnterApplicyDao;
import com.wisdom.dao.StudentDao;
import com.wisdom.dao.UserDao;
@WebServlet("/addComp_Application")
public class AddCompApplicy extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddCompApplicy() {
		super();
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
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

		System.out.println("添加申请开始");
		request.setCharacterEncoding("utf-8");
		String   cmpId=request.getParameter("cmpId");
		if (cmpId.length()==0) {
			
			String s="申请内容不能为空，请重新输入";
			String urlxx="addcomp_apply.jsp";
			request.setAttribute("alert",s);
			request.setAttribute("urlxx",urlxx);	
			request.getRequestDispatcher("all_success.jsp").forward(request, response);
		}
	
		
		EnterApplicyDao dao=new EnterApplicyDao();
		Enterapply u1=dao.getOneEnterApply(cmpId);
		
		if(u1==null	){
			String   name=request.getParameter("name");
			String simName=request.getParameter("simName");
			String type=request.getParameter("type");
			String capital=request.getParameter("capital ");
			String legalManName=request.getParameter("legalManName ");
			String coverAcreage=request.getParameter("coverAcreage ");
			String remark=request.getParameter("remark ");
			String IsPass="0";
			
			System.out.println("存入数据库的信息为："+name);
			
			System.out.println("成功提交");
		dao.addEnterApply(cmpId, legalManName, simName, type, capital, coverAcreage, remark, IsPass);
		request.getRequestDispatcher("enter_success.jsp").forward(request, response);
		}
		else {
			System.out.println("已注册");
			request.getRequestDispatcher("enter_fail.jsp").forward(request, response);
		
	}

}
}
