<%@page import="com.hy.beans.Department"%>
<%@page import="com.hy.beans.Employee"%>
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
	<!-- EL全称：Expression Language 表达式语言
		  作用：主要用来输出域对象中属性值
		 EL表达式查询规则：先从page域中开始查找，找到后直接返回，不再向其他域中查找，
					        如果找不到依次向request，session,application中查找
					        如果在application中找不到返回空串""
		 EL给我们提供了四个Scope对象，用来精确获取制定域中的属性值
		 pageScope：获取page域中的属性值
		 requestScope:获取request域中的属性值
		 sessionScope：获取session域中的属性值
		 applicationScope：获取application域中的属性值
	-->
	<% 
		Date date = new Date();
		pageContext.setAttribute("time", date+"-");
	 	request.setAttribute("time",date+"--");
	 	session.setAttribute("time",date+"---");
	 	application.setAttribute("time",date+"----");
	 	
	 	//创建employee对象
	 	Employee employee = new Employee(1,"杨绿坤",new Department(1001,"出轨门"));
	 	//将Employee对象放入page域中
	 	pageContext.setAttribute("star", employee);
	%>
	通过JSP表达式输出当前的时间：<%=date %><br/>
	通过EL表达式输出当前的时间：${time }<br/>
	通过EL表达式输出request域中当前的时间：${requestScope.time }<br/>
	通过EL表达式输出Employee对象的lastName：${pageScope.star.lastName }<br/>
	通过EL表达式输出Employee对象的getOutName方法的返回值：${pageScope.star.outName }<br/>
	通过JSP表达式输出项目的虚拟路径：<%=request.getContextPath()%><br/>
	通过EL表达式获取项目的虚拟路径：${pageContext.request.contextPath }
</body>
</html>