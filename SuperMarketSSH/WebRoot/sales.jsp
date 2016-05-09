<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>超市售货管理</title>
		<link rel="shortcut icon" href="images/g5.ico"/>
		<link rel="stylesheet" type="text/css" href="css/sales.css">
		<link rel="stylesheet" type="text/css" href="css/common.css">
		<script type="text/javascript" src="js/page.js"></script>
	</head>
	<body style="background:#f5f5dc">
		<div id="before-nav">
			<img src="images/logo.png" style="height:200px;">
			<span id="logo-font">售货管理系统</span>
			<div id="welcome"><span>欢迎您！W_littlewhite</span>
			<a href="index.html">退出</a></div>
		</div>
		<div id="nav">
			<img src="images/iconfont-iconfonthome.png">
			<a id="return" href="">返回首页</a>
			<ul>
				<li><a href="newgood.html">进货</a></li>
				<li><a href="sales.html">销售记录</a></li>
				<li><a href="query.html">查询库存</a></li>
				<li><a href="javascript:void(0)">更多操作</a></li>
			</ul>
		</div>
		<div id="sales-main">
			<div id="buycar">
				<span><img src="images/g6.ico">&nbsp;&nbsp;购物车</span>
				<div id="table-main">
					<div id="table-head">
					<table>
						<tr id="table-title">
						<td>名称</td>
						<td>数量</td>
						<td>总价</td>
					</tr>
					</table>
					</div>	
					<div id="table-body">
						<table>
						
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>名称</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
						<tr>
							<td>123</td>
							<td>123</td>
							<td>123</td>
						</tr>
					</table>
					</div>
				</div>
				<div id="buycar-bottom">总计：￥330
					<button type="button">出售</button>
				</div>
			</div>
			<div id="thegoods">
				<div id="good-table">
					<div id="good-find">
						代码：
						<input class="text" type="text" name="code">
						名称：
						<input class="text" type="text" name="name">
						<input class="button" type="button" value="查找">
					</div>
					<div id="good-Info">
						<div id="good-head">
							<table>
								<tr id="good-title">
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td>增/减</td>
								</tr>
							</table>
						</div>	
						<div id="good-body">
							<table>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
								<tr>
									<td>代码</td>
									<td>名称</td>
									<td>单价</td>
									<td>库存</td>
									<td><div class="add-good">
										<a class="left" href=""></a>
										<input type="text" name="number">
										<a class="right" href=""></a>
									</div></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom">Version:超市售货管理系统1.0&nbsp;&#169;2015 版权所有6004</div>
	</body>
</html>
