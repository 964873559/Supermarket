<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登陆失败页面</title>
    
  </head>
  
  <body>
    <h1 align="center" top="50px">登陆失败！</h1>
    <p align="center" font-size="20px"><a href="login.jsp">请重新登陆</a></p> 
  </body>
</html>
