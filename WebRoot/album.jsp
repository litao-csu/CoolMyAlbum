<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>���</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/touchTouch.css">

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
<script src="js/touchTouch.jquery.js"></script>
<!-- 
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({}); 
    $('.gallery .gall_item').touchTouch();
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
               <li><a href="index.jsp">��ҳ</a></li>
               <li><a href="personal.jsp">����</a></li>
               <li class="current"><a href="album.jsp">���</a></li>
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
  <div class="container"><br><br>
    <div class="row">
      <div class="grid_4">
        <div class="box">
          <a href="images/big1.jpg" class="gall_item"><img src="images/page3_img1.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">����</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big2.jpg" class="gall_item"><img src="images/page3_img2.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">����</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big3.jpg" class="gall_item"><img src="images/page3_img3.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">��Ц</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big4.jpg" class="gall_item"><img src="images/page3_img4.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">��ֽ</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big5.jpg" class="gall_item"><img src="images/page3_img5.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">����</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big6.jpg" class="gall_item"><img src="images/page3_img6.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">����</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big7.jpg" class="gall_item"><img src="images/page3_img7.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">�ҵĴ�ѧ</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big8.jpg" class="gall_item"><img src="images/page3_img8.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">����</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="box">
          <a href="images/big9.jpg" class="gall_item"><img src="images/page3_img9.jpg" alt=""><span></span></a>
          <div class="box_bot">
            <div class="box_bot_title">2016.4.26</div>
            <a>������ƣ�</a><br>
            <a>������Ƭ��</a><br>
            <a>���������</a><br>
            <a>����ʱ�䣺</a><br>
            <a>����������</a><br><br>
            <a href="#"><font color="3232CD">�ϴ���Ƭ</a>|<a href="#">�޸����</a>|<a href="#">������</a>
          </div>
        </div>
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
