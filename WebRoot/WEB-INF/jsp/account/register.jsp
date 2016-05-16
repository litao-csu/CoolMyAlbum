<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link href="details.css" rel="stylesheet" type="text/css" />
		
		<script type="text/javascript">

		function checkPass(){
	  		var pwd1=document.getElementById("p1").value;
	  		var pwd2=document.getElementById("p2").value;
	 		if(pwd1!=pwd2){
	   			document.getElementById("errorpwd").style.display = "block";
	  
	 		}
	 		else{
	 			document.getElementById("errorpwd").style.display = "none";
	 		}
		}

		</script>
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<s:form action="register" method="post">
							<div class="ececk_warning"><span><s:actionerror/></span></div>
							<div class="form_text_ipt">
								<input name="account.username" type="text" placeholder="用户名">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="account.password" type="password" id="p1" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="confirmPassword" type="password" id="p2" onblur="checkPass()" placeholder="重复密码">
							</div>
							
							<div class="ececk_warning" ><span id="errorpwd" style="display:none;">两次输入密码不一致</span></div>
							<center>
							
									<div class="J_before">
										<input type="button" value="获取验证码" class="btn J_download" style="width: 300px;position: relative;top: +10px;">
									</div>
									<div class="J_after" style="display:none;">
										<input type="hidden"  id="J_down" data-link="'+data.downUrl+'">
										<div class="checkcode">
											<input type="text" id="J_codetext" onblur="validate()" placeholder="输入验证码" maxlength="4" style="width: 150px;height:40px;position: relative;top: -15px;left: -24px;">
											<canvas class="J_codeimg" id="myCanvas" onclick="createCode()" style="width: 100px;height:70px">
												Your browser does not support the canvas element.
											</canvas>
										</div>
									</div>
								
							</center>
							<div class="form_btn">
							<!--  	<button type="button">注册</button> -->
								<input type="submit" value="注册 "  style="width: 300px;position: relative;bottom: -10px;"/>
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="loginForm">马上登录</a>
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
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript" src="js/identify.js"></script>
	</body>
</html>
