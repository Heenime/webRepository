package com.hy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AutoServlet() {
        super();
    }

    //用来处理get请求
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("get方法被调用");
		//1.获取请求参数
		/*
		 * 如果有乱码问题产生就在tomcat安装目录中的conf文件的server.xml文件中
		 * 第一个Connector标签中添加属性：URIEncoding="UTF-8"
		 */
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username+":"+password);
		
		//2.获取项目的虚拟路径
		String contextPath =request.getContextPath();
		System.out.println(contextPath);
		
		//3.转发，获取转发器，进行请求的转发
		RequestDispatcher requestDispatcher =request.getRequestDispatcher("success.html");
		requestDispatcher.forward(request, response);
	}
	//用来处理post请求
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		/*
		 *  post请求的请求中文乱码问题：在第一次获取请求参数之前设置字符集为UTF-8
		 */
		request.setCharacterEncoding("UTF-8");
		System.out.println("post方法被调用");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println(username+":"+password);
		
		//response的作用
		//解决响应乱码
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = response.getWriter();
		/*writer.write("<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"<meta charset=\"UTF-8\">\r\n" + 
				"<title>Insert title here</title>\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" + 
				"	<h1>我是一个很漂亮的页面</h1>\r\n" + 
				"</body>\r\n" + 
				"</html>");*/
		
		//重定向
		response.sendRedirect("success.html");
	}
	/*
	 * 转发与重定向的区别： 
	 * 1.转发发送一次请求，重定向发送两次请求
	 * 2.转发浏览器地址无变化，重定向浏览器地址有变化
	 * 3.转发可以访问WEB-INF目录下的资源，重定向不可以访问
	 * 4.转发可以共享request域中的数据，重定向不可以共享request域中的数据
	 */

}
