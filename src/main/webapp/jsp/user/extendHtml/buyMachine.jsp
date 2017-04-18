<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--购买 购买矿机 页面-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>购买矿机</title>
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../css/263.css"/>
    <link rel="stylesheet" href="../libs/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../css/indexCSS.css"/>
    <link rel="stylesheet" href="../css/buyMachineCSS.css"/>

</head>
<body>
<!--顶部个人信息-->
<div class="user_info">
    <div class="user_asset">
        持有:<span>${sessionScope.user}</span>
        生产总值:<span>${sessionScope.user.assets}</span>
    </div>
    <div class="user_id">
        ID:<span>${sessionScope.user.uid}</span>
        邮箱:<span>${sessionScope.user.email}</span>
    </div>
</div>
<!--头部导航-->
<div id="header" class="head_nav">
    <div class="content"> <a href="#" id="logo"><img src="../imgs/logo.png" height="40" /></a>
        <ul id="nav">
            <li class="navitem"><a href="../index.jsp">首页</a></li>
            <li class="navitem"><a class="active"  target="_self" href="<c:url value='/userController/listMyInfo.do'/>" >我的账户</a> </li>
            <li class="navitem"><a href="#" >算力交易</a> </li>
            <li class="navitem"><a href="#" >比特币兑换</a> </li>
            <li class="navitem"><a href="#" >融资借贷</a> </li>
            <li class="navitem"><a href="#" >推广赠送</a> </li>
            <li class="navitem"><a href="#" >帮助中心</a> </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<!--版心设置-->
<div class="centreCon">
    <div class="blue_back publicAni"><img src="../imgs/z11.png" alt=""/></div>

    <!-- 矿机购买-->
    <div class="machine_buy">
        <img class="intro_forme publicAni" src="../singlePhoto/machine_introduce.fw.png" alt=""/>
        <!-- 跳转按钮-->
        <div class="up_list">
            <div class="up_list_1 up_list_kind"><a class="selectedList" href="../extendHtml/personAccount.jsp"></a><img src="../singlePhoto/myAccount.fw.png" alt=""/></div>
            <div class="up_list_2 up_list_kind"><a href="#"></a><img src="../singlePhoto/recharge.fw.png" alt=""/></div>
            <div class="up_list_3 up_list_kind"><a href="#"></a><img src="../singlePhoto/buyMachine.fw.png" alt=""/></div>
            <div class="up_list_4 up_list_kind"><a href="../extendHtml/accountSet.jsp"></a><img src="../singlePhoto/accountSet.fw.png" alt=""/></div>
        </div>
        <div class="machine_buy_info publicAni">
            <div class="info_name"><h1>阿瓦隆 一 A721</h1></div>
            <div class="info_img">
                <img src="../singlePhoto/machine_4_4.png" alt=""/>
            </div>
            <div class="info_job">
                <p>状       态: 售卖中</p>
                <p>单       位: 台</p>
                <p>挖 矿 效 率: 100%</p>
                <p>每小时维护费: 7.6032 CNY/台</p>
            </div>
            <div class="info_price">
                <p> <span>&nbsp;฿: </span>  0.670180&nbsp;&nbsp;&nbsp;&nbsp;<span>￥:</span>  5328.00</p>
            </div>
        </div>
    </div>
    <!-- 小圆点控制-->
    <div class="circles publicAni">
        <a class="pre_point"></a>
        <a class="next_point"></a>
        <ul>
            <li><a></a></li>
            <li><a></a></li>
            <li><a></a></li>
            <li><a></a></li>
        </ul>
    </div>
    <!-- 矿机展示-->
    <div class="machine_show publicAni">
        <ul class="machine_show_img">
            <li class="first_li"><img class="second_img" src="../singlePhoto/machine_1.png" alt=""/><img class="first_img" src="../singlePhoto/fram1.png" alt=""/></li>
            <li class="second_li"><img class="second_img" src="../singlePhoto/machine_2.png" alt=""/><img  class="first_img" src="../singlePhoto/fram2.png" alt=""/></li>
            <li class="third_li"><img class="second_img" src="../singlePhoto/machine_3.png" alt=""/><img  class="first_img" src="../singlePhoto/fram3.png" alt=""/></li>
            <li class="fourth_li">
                <img class="first_img"  src="../singlePhoto/fram4.png" alt=""/>
                <img class="second_img" src="../singlePhoto/machine_4.png" alt=""/>
                <div class="main_intro"><p>阿瓦隆 一 A721</p></div>
            </li>
        </ul>
    </div>
</div>

<script src="../libs/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('element', function()
    {
        var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
        element.on('nav(demo)', function(elem)
        {
            layer.msg(elem.text());
        });
    });
</script>

</body>
</html>