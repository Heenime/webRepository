<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 导入Date包是Atl+/ -->
	<%
		Date date = new Date();
	%>
	<h1>现在的时间是：<%=date %>></h1>
	
	<%--这是jsp的注释 --%>
	
	<!--  
		1.Jsp脚本片段：用来在里面写java代码
	-->
	<% 
		for(int i=0;i<5;i++){	
		//out.println("我想得到csdn的T恤");  
	%>
	<h2>我想得到csdn的T恤</h2>
	<%
		}
	%>
	
	<!-- 2.jsp表达式 ：用来向浏览器输出对象-->
	<%="我是通过jsp表达式输出的" %>
	
	<h1>欢迎您,<%=request.getParameter("username")%></h1>
	
	<!-- 
		四个域：
				page域：范围是当前页面
					对应的域对象：pageContext
					域对象的类型：pageContext
				request域：范围是当前请求（一次请求）
					对应的域对象：request
					域对象的类型：HttpServletRequest
				session域：范围是当前会话（一次会话）
					对应的域对象：session
					域对象的类型：HttpSession
				application域：范围是当前Web应用
					对应的域对象：application
					域对象的类型：ServletContext
				四个域对象都有以下三个方法：
					void getAttribute(String key,Object value)
					Object getAttribute(String key)
					void removeAttribute(String key)
	 -->
	 <!-- 在当前页面，分别向四个域中添加四个属性 -->
	 <%
	 	pageContext.setAttribute("pageKey","pageValue");
	 	request.setAttribute("reqKey","reqValue");
	 	session.setAttribute("sessKey","sessValue");
	 	application.setAttribute("appKey","appValue");

	 %>
	 <h1>在当前页面获取四个域中的属性值</h1>
	 page域中的属性值是：<%=pageContext.getAttribute("pageKey") %><br/>
	 request域中的属性值是：<%=request.getAttribute("reqKey") %><br/>
	 session域中的属性值是：<%=session.getAttribute("sessKey") %><br/>
	 application域中的属性值是：<%=application.getAttribute("appKey") %><br/>
	 
	 <!-- 转发到scope2.jsp页面 -->
	 <%-- 	 <jsp:forward page="/scope2.jsp"></jsp:forward> --%>
	 <a href="/Web_JSP/scope2.jsp">去scope2.jsp页面</a>
</body>
</html>