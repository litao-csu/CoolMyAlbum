<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>��ҳ</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
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
<script src="js/jquery.shuffle-images.js"></script>
<!--
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 

 $(document).ready(function(){
       $(".shuffle-me").shuffleImages({
         target: ".images > img"
       });
    });

</script>-->
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
</head>

<body class="page1" id="top">
<!--==============================
              header
=================================-->
<header>
  <div class="header_top">
    <div class="container">
      <div class="row">
        <div class="grid_12">
          <h1><a href="index.jsp">������� <br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp�������� </a></h1><br>
                                  ����ÿһ�ݸж�
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
                                             �������
            </a>
          </h1>
          <div class="navigation ">
            <nav>
              <ul class="sf-menu">
               <li class="current"><a href="index.jsp">��ҳ</a></li>
               <li><a href="personal.jsp">����</a></li>
               <li><a href="album.jsp">���</a></li>
               <li><a href="share.jsp">����</a></li>
               <li><a href="friends.jsp">����</a></li>
               <li><a href="message.jsp">����</a></li>
               <li><a href="ranklist.jsp">���а�</a></li>
               <li>��¼�û�: <font color="red"> ${ sessionScope.loginUser.userName } </font> </li>
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
    <div class="row">
      <div class="grid_12">
        <h2 class="ta__center">������Ƭ</h2>
        <div class="shuffle-group">
          <div class="row">
            <div class="grid_8">
              <div data-si-mousemove-trigger="100"  class="shuffle-me offset__1">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_1.jpg" alt="">
                  <img src="images/gall_1-1.jpg" alt="">
                  <img src="images/gall_1-2.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="grid_4">
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_2.jpg" alt="">
                  <img src="images/gall_2-1.jpg" alt="">
                  <img src="images/gall_2-2.jpg" alt="">
                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me offset__1">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_3.jpg" alt="">
                  <img src="images/gall_3-1.jpg" alt="">
                  <img src="images/gall_3-2.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="clear"></div>
            <div class="grid_4">
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_4.jpg" alt="">
                  <img src="images/gall_4-1.jpg" alt="">
                  <img src="images/gall_4-2.jpg" alt="">
                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_5.jpg" alt="">
                  <img src="images/gall_5-1.jpg" alt="">
                  <img src="images/gall_5-2.jpg" alt="">
                </div>
              </div>
            </div>
            <div class="grid_8">
              <div data-si-mousemove-trigger="100"  class="shuffle-me">
                <a href="album.jsp" class="info" target="_blank"></a>
                <div class="images">
                  <img src="images/gall_6.jpg" alt="">
                  <img src="images/gall_6-1.jpg" alt="">
                  <img src="images/gall_6-2.jpg" alt="">
                </div>
              </div>
            </div>
            </div>
          </div>
      </div>
    </div>
  </div>

  <div class="sep-1"></div>
  <div class="container">
    <div class="row">
      <div class="grid_8">
        <h3>����</h3>
        Proin pharetra luctus diam<br>
        <a href="#" class="btn">����</a> 
      </div>
      <div class="grid_4">
        <h3>����</h3>
        <ul class="socials">
          <li>
            <div class="fa fa-facebook"></div>
            <a href="#">�����û�</a>
          </li>
          <li>
            <div class="fa fa-twitter"></div>
            <a href="#">�������</a>
          </li>
        </ul>
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
        <a href="#">���ڿ���</a>
        <a href="#">�������</a>
        <a href="#">��������</a>
        <a href="#">�ͻ�����</a>
      </div>
    </div>

  </div>  
</footer>
</body>
</html>
