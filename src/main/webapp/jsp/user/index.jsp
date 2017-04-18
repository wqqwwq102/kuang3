<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
	<head>
    <script type="text/javascript">
	 paceOptions = { 
    ajax: false, // disabled 
    document: true, // disabled 
    eventLag: false, // disabled 
	restartOnRequestAfter: true, 
   };
    </script>
    <script type="text/javascript" src="js/pace.min.js"></script>
    <link href="css/dataurl.css" rel="stylesheet" type="text/css"  />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="keywords" content="矿三网">
    <meta name="description" content="矿三网">
    <meta name="author" content="矿三网">
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />    
    <link rel="stylesheet" type="text/css" href="css/lib.css">
    <link rel="stylesheet" type="text/css"  href="css/fonts/home_new/TXXCHJ.css">
    <link rel="stylesheet" type="text/css"  href="css/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css"  href="css/owl-carousel/owl.theme.css">
    <link rel="stylesheet" type="text/css"  href="css/owl-carousel/owl.transitions.css">
    <link rel="stylesheet" type="text/css"  href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"  href="css/style.css">
    <link rel="stylesheet" type="text/css"  href="css/263.css">
    <link rel="stylesheet" type="text/css"  href="css/twentytwenty.css">
    <link rel="stylesheet" type="text/css"  href="css/magic360.css">
    <link rel="stylesheet" type="text/css"  href="css/animate.min.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.parallax.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/jquery.event.move.js"></script>
    <script type="text/javascript" src="js/jquery.twentytwenty.js"></script>
    <script type="text/javascript" src="js/magic360.js"></script>
    <script type="text/javascript" src="js/typed.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
	var Magic360Lang = {
	'hint-text': '拖动鼠标左右旋转',
	'mobile-hint-text': '左右旋转'
	};
	</script>
    <script>
    $(window).load(function(){
        $("#head-typed").typed({
	strings: ["^1500 连接金融、互联网、社会系统、生物科技的新网络 ^500—2009年全球金融海啸退去， ^500比特币区块链首次现身人类社会。"]
        });
    });	
	</script>
    <title>矿三网（杭州）有限公司</title>
	</head>
	<body >
<div id="pace-progress"></div>
<div id="bg-black"></div>
<div id="preloader"></div>
<div id="header">
      <div class="content"> <a href="#" id="logo"><img src="images/logo.png" height="40" /></a>
    <ul id="nav">
          <li class="navitem"><a class="active" href="#" target="_self">首页</a></li>
          <li class="navitem"><a href="<c:url value='/userController/listMyInfo.do'/>" >我的账户 </a> </li>
          <li class="navitem"><a href="#" >算力交易</a> </li>
          <li class="navitem"><a href="#" >比特币兑换</a> </li>
          <li class="navitem"><a href="#" >融资借贷</a> </li>
          <li class="navitem"><a href="#" >推广赠送</a> </li>
          <li class="navitem"><a href="#" >帮助中心</a> </li>
        </ul>
    <div class="clear"></div>
  </div>
      <a id="headSHBtn" href="#"><i class="fa fa-bars"></i></a> </div>
<section id="intro" class="parallax-section"  style="background-image:url(images/home/mainBG.jpg);">
      <div class="container" style="z-index:9">
    <div class="row">
          <div class="col-md-12 col-sm-12">
        <h1 class="wow fadeInDown" data-wow-delay="3.1s">比特世界，宇宙本就如此运行</h1>
        <h3 class="wow fadeInDown" data-wow-delay="4.1s">LET THERE BE ...</h3>
        <p id="head-typed"></p>
      </div>
        </div>
  </div>
      <div id="canvas"></div>
      <div class="sliderArrow" style="background-image:url(images/home/slider-down.png)"></div>
    </section>
<!-- =========================
    About BTC Miner   
	============================== -->
<section id="about"  style="background-image:url(images/home/bg/tech-BG.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-8 col-sm-offset-2">
        <div class="header wow bounceIn">
              <h2 class="title">比特金挖矿</h2>
              <p class="subtitle" style="line-height:1.67em;">2100万块比特金埋藏在比特世界，每10分钟25块比特金会现身网络，等待全人类用高阶智慧开采。第一个找到它的人，可命名并占有它。
            近十年来，人类从人脑开采、个人电脑开采、逐渐过渡到指挥大规模挖矿设备开采比特金，以满足人类世界无限增长的需求。</p>
            </div>
      </div>
        </div>
    <div class="row">
          <div class="col-sm-12">
        <div class="col-sm-3 wow" style="padding:0">
              <div class="about-list">
            <h1>及时获利</h1>
            <h2>即买即挖，随时提取比特币</h2>
            <div class="list-icon"> <img class="center-block" src="images/home/home-app-icon/zaowuLOGO.png" />
                  <div class="about-cirle"> <br />
                &nbsp;</div>
                </div>
            <p>&nbsp; </p>
          </div>
            </div>
        <div class="col-sm-3 wow" style="padding:0">
              <div class="about-list">
            <h1>矿场持续收益</h1>
            <h2>最低的维护费占比，支持人民币账户</h2>
            <div class="list-icon"> <img class="center-block" src="images/home/home-app-icon/Filming-LOGO.png" />
                  <div class="about-cirle"> &nbsp;</div>
                </div>
            <p>&nbsp; </p>
          </div>
            </div>
        <div class="col-sm-3 wow" style="padding:0">
              <div class="about-list">
            <h1>安全保障 </h1>
            <h2>银行系统SSL安全连接、多重加密</h2>
            <div class="list-icon"> <img class="center-block" src="images/home/home-app-icon/3603D-LOGO.png" />
                  <div class="about-cirle"> &nbsp;</div>
                </div>
            <p>&nbsp; </p>
          </div>
            </div>
        <div class="col-sm-3 wow" style="padding:0">
              <div class="about-list">
            <h1>贴心服务</h1>
            <h2>400客服电话，在线客服为玩家做到最好</h2>
            <div class="list-icon"> <img class="center-block" src="images/home/home-app-icon/AR_VR-LOGO.png" />
                  <div class="about-cirle"> &nbsp;</div>
                </div>
            <p>&nbsp; </p>
          </div>
            </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-1-head SECTION   
	============================== -->
<section id="product-1-head"  class="parallax-section"  style="background-image:url(images/home/bg/Shopping-WF.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-2">
        <div class="num-cirle wow">
              <h1 class="number"> 1 </h1>
            </div>
      </div>
          <div class="col-sm-10 right-info">
        <div class="product-header wow" >
              <h2 class="title">阿瓦隆-A741</h2>
              <p class="subtitle">生产力：7.3T/S</p>
            </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-1-content SECTION   
	============================== -->
<section id="product-1-con" class="white"  style="background-image:url(images/home/bg/Shopping-BG.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-6">
        <div class="iphone wow"> <img src="images/home/M1.png" alt="" /> </div>
      </div>
          <div class="col-sm-6">
        <div class="product-con-header wow">
              <h2 class="title">A741</h2>
              <p class="description">生产力：7.3T/S<br />
            功耗(Power Consumption)：1100W<br />
            重量(Weight)：4.2KG<br />
            体积(Size)：( 长)360mmXW(宽)130mmXH(高)150mm</p>
              <a href="javascript:;" class="more-black wow" data-wow-delay=".5s">开始挖矿》》》</a> </div>
      </div>
        </div>
  </div>
    </section>

<!-- =========================
     product-2-head SECTION   
	============================== -->
<section id="product-2-head"  class="parallax-section"  style="background-image:url(images/home/bg/Shopping-WF.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-2">
        <div class="num-cirle wow">
              <h1 class="number"> 2 </h1>
            </div>
      </div>
          <div class="col-sm-10 right-info">
        <div class="product-header wow" >
              <h2 class="title">阿瓦隆-A721</h2>
              <p class="subtitle">生产力：6T/S</p>
            </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-2-content SECTION   
	============================== -->
<section id="product-2-con"  class="white"  style="background-image:url(images/home/bg/Filming-BG.jpg);">
      <div class="container">
    <div class="row wow">
          <div class="col-sm-6">
        <div class="product-con-header">
              <h2 class="title">阿瓦隆-A721机器人参数:</h2>
              <p class="description">生产力：6T/S<br />
              功耗(Power Consumption)：900W<br />
              重量(Weight)：4.2KG<br />
              体积(Size)：( 长)360mmXW(宽)130mmXH(高)150mm</p>
              <a href="#" class="more-black wow" data-wow-delay=".5s">开始挖矿》》》</a> </div>
      </div>
          <div class="col-sm-6 ">
        <div class="iphone wow"> <img src="images/home/M2.png" alt="" /> </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-3-head SECTION   
	============================== -->
<section id="product-3-head"  class="parallax-section"  style="background-image:url(images/home/bg/Shopping-WF.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-2">
        <div class="num-cirle wow">
              <h1 class="number"> 3 </h1>
            </div>
      </div>
          <div class="col-sm-10 right-info">
        <div class="product-header wow" >
              <h2 class="title">蚂蚁–S9</h2>
              <p class="subtitle">生产力：12.93T/S</p>
            </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-3-content SECTION   
	============================== -->
<section id="product-3-con" class="white"  style="background-image:url(images/home/bg/Shopping-BG.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-6">
        <div class="iphone wow"> <img src="images/home/M3.png" alt="" /> </div>
      </div>
          <div class="col-sm-6">
        <div class="product-con-header wow">
              <h2 class="title">蚂蚁–S9机器人参数:</h2>
              <p class="description">生产力：12.93T/S<br />
            功耗：(Power Consumption) 1270W<br />
            尺寸：(Size) 350mm(L)*135mm(W)*158mm(H) <br />
            重量(Weight) ：5.5 KG </p>
              <a href="#" class="more-black wow" data-wow-delay=".5s">开始挖矿》》》</a> </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-1-head SECTION   
	============================== -->
<section id="product-4-head"  class="parallax-section"  style="background-image:url(images/home/bg/Shopping-WF.jpg);">
      <div class="container">
    <div class="row">
          <div class="col-sm-2">
        <div class="num-cirle wow">
              <h1 class="number"> 4 </h1>
            </div>
      </div>
          <div class="col-sm-10 right-info">
        <div class="product-header wow" >
              <h2 class="title">蚂蚁–S7</h2>
              <p class="subtitle">生产力4.86T</p>
            </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-1-content SECTION   
	============================== -->
<section id="product-4-con"  class="white"  style="background-image:url(images/home/bg/Filming-BG.jpg);">
      <div class="container">
    <div class="row wow">
          <div class="col-sm-6">
        <div class="product-con-header">
              <h2 class="title"> 蚂蚁–S7机器人参数:</h2>
              <p class="description"> 生产力4.86T<br />
            功耗(Power Consumption) 1210W<br />
            尺寸：(Size) 301mm（L）*123mm（W）*155mm（H）KG <br />
            重量(Weight)：4.2KG </p>
              <a href="javascript:;" class="more-black wow" data-wow-delay=".5s">开始挖矿》》》</a> </div>
      </div>
          <div class="col-sm-6 ">
        <div class="iphone wow"> <img src="images/home/M4.png" alt="" /> </div>
      </div>
        </div>
  </div>
    </section>
<!-- =========================
     product-5-content SECTION   
	============================== -->
<section id="product-5-con">
      <div class="moreapp wow">
    <ul>
          <li> <img src="images/home/moreapp/vrszbwg.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.68"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/artmed.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.5"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/human.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.46"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/citytour.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.7"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/vrjy.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.79"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/build.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.63"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/offhelp.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.3"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/exp.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.67"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/vrcxsys.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.4"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">美女图片</div>
      </li>
          <li> <img src="images/home/moreapp/more.jpg" width="160" height="80" alt="" />
        <div class="app-overlayer" style="opacity:0.7"></div>
        <div class="app-overlayer-new"></div>
        <div class="info-text">更多图片</div>
      </li>
        </ul>
  </div>
      <div class="clear"></div>
    </section>
<section id="news">
      <div class="container">
    <div class="row header wow">
          <h2 class="title">此刻，正在交易</h2>
        </div>
    <div class="row wow">
          <div id="owlNewslist" class="owl-carousel"> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
            <p class="date"><span class="md">01-13</span><span class="year"> 2017</span></p>
            <div class="news_wrapper"> <img  class="center-block img-responsive" src="/demo/uploads/cover/1.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
          </div>
            </a> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
              <p class="date"><span class="md">12-11</span><span class="year"> 2017</span></p>
              <div class="news_wrapper"> <img  class="center-block img-responsive" src="uploads/cover/2.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
            </div>
            </a> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
              <p class="date"><span class="md">12-03</span><span class="year"> 2017</span></p>
              <div class="news_wrapper"> <img  class="center-block img-responsive" src="uploads/cover/1-161122154929A3.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
            </div>
            </a> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
              <p class="date"><span class="md">10-22</span><span class="year"> 2017</span></p>
              <div class="news_wrapper"> <img  class="center-block img-responsive" src="uploads/cover/3.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
            </div>
            </a> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
              <p class="date"><span class="md">10-14</span><span class="year"> 2017</span></p>
              <div class="news_wrapper"> <img  class="center-block img-responsive" src="uploads/cover/4.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
            </div>
            </a> <a target="_blank" href="#">
            <div class="col-sm-12 news-list">
              <p class="date"><span class="md">09-05</span><span class="year"> 2017</span></p>
              <div class="news_wrapper"> <img  class="center-block img-responsive" src="uploads/cover/5.jpg" alt="" />
                <div class="clear"> </div>
                <h3 class="title">美女图片</h3>
              </div>
            </div>
            </a> </div>
        </div>
    <div class="row">
          <div class="col-sm-12 text-center"> <a href="#" class="more-white wow" data-wow-delay=".5s">更多精彩</a> </div>
        </div>
  </div>
    </section>

<!-- =========================
     contact SECTION   
	============================== -->
<section id="contact"  class="parallax-section"  style="background-image:url(images/home/bg/developer-BG.jpg);">
      <div class="container">
    <div class="row header wow">
          <h2 class="title wow swing">即刻发布，趁现在！</h2>
        </div>
    <div class="row">
          <div class="col-sm-8 col-sm-offset-2 content-box wow">
        <p>来吧，让我们为您建立一个真正的虚拟货币交易市场！<br/>
              发布矿机信息，其它的交给我们！ </p>
        <div class="line"></div>
        <a href="#" class="more-contact wow" data-wow-delay=".5s">发布供求信息</a> </div>
        </div>
  </div>
    </section>
<div id="footer">
      <div class="footer-menu"> 
    <!-- footer about start -->
    <div class="footer-des">
          <h5>关于我们</h5>
          <p>矿三网，提供矿场矿机交易平台。</p>
        </div>
    <!-- footer about end --> 
    <!-- footer menu one start -->
    <div class="footer-about">
          <h5>微博</h5>
          <ul>
      </ul>
        </div>
    <!-- footer menu one end --> 
    <!-- footer menu two start -->
    <div class="footer-pro">
          <h5>加入群</h5>
        </div>
    <!-- footer menu two end --> 
    <!-- footer menu three start -->
    <div class="footer-contant">
          <h5>联系方式</h5>
        </div>
    <!-- footer menu three end --> 
  </div>
      <div class="clear"> </div>
      <div class="footer-social">
    <div class="social-content">
          <div class="copyright">
        <p> Copyright © 2017 矿三网版权所有 <span> </span> </p>
      </div>
          <div class="social" id="share">
        <ul>
              <li id="sweixin"><i class="fa fa-weixin"></i> <img class="weixin-img" src="images/1438424052624.jpg"  alt="" /> </li>
              <li><a target="_blank" href="#"><i class="fa fa-weibo"></i></a></li>
            </ul>
      </div>
        </div>
  </div>
    </div>
<!-- footer end -->
</body>
    <script>
        $(".more-black").click(function(e)
        {
            $(".more-black").attr(
                    "href", "登陆注册/reg.jsp",
                    "targer", "_blank"
            );
            console.log(e.target);
        })
    </script>
	<script type="text/javascript" src="js/three.min.js"></script>
	<script type="text/javascript" src="js/projector.js"></script>
	<script type="text/javascript" src="js/canvas-renderer.js"></script>
	<script type="text/javascript" src="js/3d-lines-animation.js"></script>
</html>