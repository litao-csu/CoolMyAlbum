<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>好友</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>
<!-- 
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 

</script> -->
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
<style type="text/css">
.friends{float:left;width:30%;height:80%;}
.chat{float:left;width:50%;height:80%;margin-left:100px;}
.chatwith{width:100%;height:80%;border:1px soild #000;}
</style>
</head>

<body>
<!--==============================
              header
=================================-->
<header>
  <div class="header_top">
    <div class="container">
      <div class="row">
        <div class="grid_12">
          <h1><a href="index.jsp">酷我相册 <br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp美好生活 </a></h1><br>
          	留下每一份感动
        </div>
      </div>
    </div>
  </div>
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <h1 class="logo">
            <a href="index.jsp">
                                          酷我相册
            </a>
          </h1>
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <li><a href="index.jsp">首页</a></li>
               <li><a href="personal.jsp">个人</a></li>
               <li><a href="album.jsp">相册</a></li>
               <li><a href="share.jsp">分享</a></li>
               <li class="current"><a href="friends.jsp">好友</a></li>
               <li><a href="message.jsp">留言</a></li>
               <li><a href="ranklist.jsp">排行榜</a></li>
               <li>登录用户: <font color="red"> ${ sessionScope.loginUser.userName } </font> </li>
             </ul>
            </nav>
            <div class="clear"></div>
          </div>       
         <div class="clear"></div>  
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<section id="content">
   <div class="container">
      <div  class="friends">
       <h3>我的好友</h3>
	   <table bgcolor="#E0FFFF" width="100%" height="80%">     
	      <tr><td>111</td></tr>
	      <tr><td>222</td></tr>
	      <tr><td>333</td></tr>
	      <tr><td>444</td></tr>
	      <tr><td>555</td></tr>
	   </table>
	  </div>
      <div class="chat">
	     <h3>聊天窗口</h3>
	     <div class="chatwith">
	     </div>
      </div>
   </div>
</section>


<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="#"></div>
        <a href="#">关于酷我</a>
        <a href="#">意见反馈</a>
        <a href="#">常见问题</a>
        <a href="#">客户服务</a>
      </div>
    </div>

  </div>  
</footer>
</body>
</html>
