<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>登陆界面</title>
		<link rel="shortcut icon" href="images/g5.ico"/>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body style="background:#f0f8ff">
		<div id="first-div">
			<div id="logo"></div>
			<div id="form">
				<form action="javascript:void(0)">
					<span class="form">用户名：</span>
					<input class="input-in" type="text" name="username">
					<br>
					<span class="form">密码：</span>
					<input class="input-in" type="password" name="password">
					<br>
					<input class="button" type="submit" value="登陆">
					<input class="button" type="reset" value="重置">
				</form>
			</div>
		</div>
		<div id="bottom">Version:超市售货管理系统1.0&nbsp;&#169;2015 版权所有6004</div>
	</body>
	<script src="js/jquery.js"></script>
	<script type="text/javascript">
		(function(){
			$("input[type='submit']").bind("click",checkLogin);
		})();
		function checkLogin() {
			var username = $("input[name='username']").val();
			var password = $("input[name='password']").val();
			$.post("login.action",{'username':username,
				'password':password},
				function (data) {
					var value = data.flag;
					if(value == "登陆成功" ){
						alert("登陆成功！");
						location.href = "sales.jsp";
					}else {
						alert(value);
					}
				 },"json");
		}
	</script>
</html>
