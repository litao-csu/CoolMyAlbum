<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		
		<title>登录</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登录
						</div>
						
						<s:form action="login.action" method="post">
							
							<div class="form_text_ipt">
								<input name="account.username" type="text" placeholder="用户名">	
							</div>
							
							<div class="form_text_ipt">   
								<input name="account.password" type="password" placeholder="密码"> 
							</div>
							
							<div class="ececk_warning"><span><s:actionerror/></span></div>
							
							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 下次自动登录</label>
								</div>
								<div class="right check_right">
									<a href="#">忘记密码</a>
								</div>
							</div>
							
							 
						 	<div class="form_btn">
								<input type="submit" value="                                 登录                               "/>
							</div>
							 
							 
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="registerForm">马上注册</a>
							</div>
						</s:form>
						
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#">QQ登录</a>
								<a href="#">微信登录</a>
								<a href="#">微博登录</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="/js/jquery.js" ></script>
		<script type="text/javascript" src="/js/common.js" ></script>
	</body>
</html>
