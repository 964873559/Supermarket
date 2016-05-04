<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="session" class="entity.User"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登陆成功页面</title>
    
  </head>
  
  <body>
  <h1 align="center" top="50px">登陆成功！</h1>
  <p align="center" font-size="20px">欢迎您：<%=user.getUsername() %>!</p>
  </body>
</html>
