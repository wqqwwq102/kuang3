<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>账户设置</title>
    <link rel="stylesheet" type="text/css"  href="../css/style.css">
    <link rel="stylesheet" type="text/css"  href="../css/263.css">
    <link rel="stylesheet" href="../libs/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../css/indexCSS.css"/>
    <style>
        body
        {
            width: 100%;
            height: 100%;
            background: url("../imgs/g8.png") repeat center;
            color: #fff;
        }
        .centreCon
        {
            position: relative;
            width: 1344px;
            height: 1500px;
            margin: 0 auto;
            top: 30px;
            background: url(../imgs/buySprite.png) no-repeat;
            background-position: -34px -1250px;
        }
        .centreCon .con_upCircle
        {
            position: absolute;
            width: 100%;
            height: 1200px;
            top: 80px;
            margin: 0 auto;
            background: url("../imgs/setSprite.png") no-repeat;
            background-position: -32px -1234px;
        }
        .centreCon .con_upCircle .con_upCircle_set .set_left_rectangle
        {
            position: absolute;
            width: 554px;
            height: 652px;
            top: 15px;
            right: 90px;
            background: rgba(0, 1, 8, .8);
            padding: 50px 30px 50px 30px;
            color: #68fefc;
        }
        .centreCon .con_upCircle .con_upCircle_set .set_left_rectangle input
        {
            width: 370px;
            height: 30px;
            padding-left: 15px;
            border: 1px solid rgba(0, 0, 0, .8);
            border-radius: 6px;
            background-color: rgba(255,255,255, .2);
            color: #68fefc;
            margin-left: 20px;
            margin-bottom: 10px;
        }
        .centreCon .con_upCircle .con_upCircle_set .set_left_rectangle .account_safe input
        {
            width: 360px;
            margin-left: 0px;
        }
        .centreCon .con_upCircle .con_upCircle_set .set_left_rectangle .account_change input
        {
            width: 342px;
            margin-left: 0px;
        }
        .centreCon .con_upCircle .con_upCircle_set .set_left_rectangle .account_change p
        {
            margin-top: 10px;
            text-align: center;
        }
        .centreCon .con_downSuper
        {
            position: absolute;
            width: 98%;
            height: 538px;
            top: 850px;
            left: 8px;
            background: url("../imgs/setSprite.png") no-repeat;
            background-position: -1416px -2232px;
            opacity: 0.65;
        }
        .title
        {
            font: bold 20px/30px arial,sans-serif;
            color: #68fefc;
        }
        .mar_bottom
        {
            margin-bottom: 30px;
        }
        .padding_left
        {
            padding-left:50px;
            padding-right: 50px;
        }
        form button
        {
            width: 200px;
            height: 40px;
            background-color: #009688;
            border: 2px solid #000000;
            border-radius: 10px;
            cursor: pointer;
            margin-left: 164px;
        }
        form button:hover
        {
            background-color: #68fefe;
        }
        form button:active
        {
            width: 196px;
            height: 38px;
            background-color: #68fefe;
            border: 3px solid #000000;
            border-radius: 10px;
        }
        .fll
        {
            margin-top: 10px;
            height: 1px;
        }
        .fll li
        {
            float: left;
        }
        .centreCon .con_upCircle_set .up_list
        {
            position: absolute;
            top: 134px;
            width: 426px;
            height: 250px;
            animation:myfirst 1.5s;
            -moz-animation:myfirst 1.5s; /* Firefox */
            -webkit-animation:myfirst 1.5s; /* Safari and Chrome */
            -o-animation:myfirst 1.5s; /* Opera */
        }
        @keyframes myfirst
        {
            0% {  left:1000px;  }
            100% {  left: 0px; }
        }

        @-moz-keyframes myfirst /* Firefox */
        {
            0% {  left:1000px;  }
            100% {  left: 0px; }
        }

        @-webkit-keyframes myfirst /* Safari and Chrome */
        {
            0% {  left:1000px;  }
            100% {  left: 0px; }
        }

        @-o-keyframes myfirst /* Opera */
        {
            0% {  left:1000px;  }
            100% {  left: 0px; }
        }
        .centreCon .con_upCircle_set .up_list .up_list_kind
        {
            position: absolute;
            width: 324px;
            height: 136px;
            left: 55px;
        }
        .centreCon .con_upCircle_set .up_list .up_list_1
        {
            top: -30px;
        }
        .centreCon .con_upCircle_set .up_list .up_list_2
        {
            top: 30px;
        }
        .centreCon .con_upCircle_set .up_list .up_list_3
        {
            top: 90px;
        }
        .centreCon .con_upCircle_set .up_list .up_list_4
        {
            top: 150px;
            left: 200px;
            animation:myfirst_4 1.5s;
            -moz-animation:myfirst_4 1.5s; /* Firefox */
            -webkit-animation:myfirst_4 1.5s; /* Safari and Chrome */
            -o-animation:myfirst_4 1.5s; /* Opera */
        }
        @keyframes myfirst_4
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-moz-keyframes myfirst_4 /* Firefox */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-webkit-keyframes myfirst_4 /* Safari and Chrome */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-o-keyframes myfirst_4 /* Opera */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }
        .centreCon .con_upCircle_set .up_list a
        {
            display: block;
            position: absolute;
            top: 25px;
            left: 13px;
            width: 200px;
            height: 55px;
            border-radius: 10px;
            z-index: 99;
        }
        .centreCon .con_upCircle_set .up_list a:hover
        {
            background: rgba(0, 0, 0, .3);
        }
        .publicAni
        {
            animation:pubAni 3s;
            -moz-animation:pubAni 3s; /* Firefox */
            -webkit-animation:pubAni 3s; /* Safari and Chrome */
            -o-animation:pubAni 3s; /* Opera */
        }
        @keyframes pubAni
        {
            0% {  opacity: 0;  }
            50% {  opacity: 0; }
            100% {  opacity: 1; }
        }

        @-moz-keyframes pubAni /* Firefox */
        {
            0% {  opacity: 0;  }
            50% {  opacity: .2; }
            100% {  opacity: 1; }
        }

        @-webkit-keyframes pubAni /* Safari and Chrome */
        {
            0% {  opacity: 0;  }
            50% {  opacity: .2; }
            100% {  opacity: 1; }
        }

        @-o-keyframes pubAni /* Opera */
        {
            0% {  opacity: 0;  }
            50% {  opacity: .2; }
            100% {  opacity: 1; }
        }
    </style>

</head>
<body>
<!--顶部个人信息-->
<div class="user_info">
    <div class="user_asset">
        持有:<span>${sessionScope.user}</span>
        生产总值:<span></span>
    </div>
    <div class="user_id">
        ID:<span></span>
        邮箱:<span></span>
    </div>
</div>
<!--头部导航-->
<div id="header" class="head_nav">
    <div class="content"> <a href="#" id="logo"><img src="../imgs/logo.png" height="40" /></a>
        <ul id="nav">
            <li class="navitem"><a href="../index.jsp">首页</a></li>
            <li class="navitem"><a class="active" target="_self" href="<c:url value='/userController/listMyInfo.do'/>" >我的账户 </a> </li>
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
    <div class="con_upCircle">
        <div class="con_upCircle_set">
            <!-- 跳转按钮-->
            <div class="up_list">
                <div class="up_list_1 up_list_kind"><a href="../extendHtml/personAccount.jsp"></a><img src="../singlePhoto/myAccount.fw.png" alt=""/></div>
                <div class="up_list_2 up_list_kind"><a href="#"></a><img src="../singlePhoto/recharge.fw.png" alt=""/></div>
                <div class="up_list_3 up_list_kind"><a href="../extendHtml/buyMachine.jsp"></a><img src="../singlePhoto/buyMachine.fw.png" alt=""/></div>
                <div class="up_list_4 up_list_kind"><a href="#"></a><img src="../singlePhoto/accountSet.fw.png" alt=""/></div>
            </div>
            <!--<div class="set_left_circle"></div>-->
            <div class="set_left_rectangle publicAni">
                <!--==============我的账户=================-->
                <!--账户资料-->
                <div class="account_data mar_bottom">
                    <h1 class="title mar_bottom">账户资料</h1>
                    <form id="accData" class="form-inline padding_left" action="">
                        手机号:<input id="phoneNum" type="text"/>
                        &nbsp;Q&nbsp;&nbsp;&nbsp;Q&nbsp;:<input id="qqNum" type="text"/>
                        详细地址
                        <ul id="distpicker3" class="fll">
                            <li class="form-group" style="width: 150px;">
                                <label class="sr-only" for="province6" style="width: 150px;"></label>
                                <!-- 用户选择的 省 -->
                                <select class="form-control" id="province6" style="width: 150px;"></select>
                            </li>
                            <li class="form-group" style="width: 140px;">
                                <label class="sr-only" for="city6" style="width: 140px;"></label>
                                <!-- 用户选择的 市 -->
                                <select class="form-control" id="city6" style="width: 140px;"></select>
                            </li>
                            <li class="form-group" style="width: 150px;">
                                <label class="sr-only" for="district6" style="width: 150px;"></label>
                                <!-- 用户选择的 县 -->
                                <select class="form-control" id="district6" style="width: 150px;"></select>
                            </li>
                        </ul>
                    </form>
                </div>
                <!--账户安全-->
                <div class="account_safe mar_bottom">
                    <h1 class="title mar_bottom">实名认证</h1>
                    <form id="idAuth" action="" class="padding_left">
                        真实姓名: <input id="idName" type="text"/>
                        身份证号: <input id="idNum" type="text"/>
                        <button id="idButton" type="button">确认</button>
                    </form>
                </div>
                <!-- 修改密码-->
                <div class="account_change mar_bottom">
                    <h1 class="title mar_bottom">提现密码修改</h1>
                    <form id="changePass" action="" class="padding_left">
                        原&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码: <input id="oldPwd" placeholder="密码不能包含空格,长度至少为9,必须包含数字和字母" type="text"/>
                        输入新密码: <input id="newPwd" placeholder="密码不能包含空格,长度至少为9,必须包含数字和字母" type="password"/>
                        确认新密码: <input id="reNewPwd" placeholder="密码不能包含空格,长度至少为9,必须包含数字和字母" type="password"/>
                        <button id="changeButton" type="button">确认</button>
                    </form>
                    <p id="warning" style="color: red;"></p>
                    <p>初始提现密码通过邮箱注册已发送至您的邮箱, 请保管好您的提现密码, 切勿泄露</p>
                </div>
            </div>
        </div>
    </div>
    <div class="con_downSuper"></div>
</div>


<script src="../libs/layui/layui.js" charset="utf-8"></script>
<script src="../js/citySelect/jquery-1.11.0.min.js"></script>
<script src="../js/citySelect/distpicker.data.min.js"></script>
<script src="../js/citySelect/distpicker.min.js"></script>

<script>
    $(function () {
        'use strict';
        var $distpicker = $('#distpicker');
        $('#distpicker3').distpicker({
            province: '浙江省',
            city: '杭州市',
            district: '西湖区'
        });
    });
    layui.use('element', function()
    {
        var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
        element.on('nav(demo)', function(elem)
        {
            layer.msg(elem.text());
        });
    });
    /*========================账户设置自定义量====================*/
    // 账户资料
    var phoneNum = $("#phoneNum");
    var qqNum = $("#qqNum");
    // 实名认证
    var idName = $("#idName");
    var idNum = $("#idNum");
    // 密码修改
    var newPwdInput = $("#newPwd");
    var reNewPwdInput = $("#reNewPwd");
    var oldPwd = $("#oldPwd");
    var warning = $("#warning");
    // 定义存储变量
    var phoneStrg, qqStrg, provinStrg, cityStrg, disStrg, nameStrg, idnumStrg;
    var oldPwdStrg, newPwdStrg, reNewPwdStrg;
    var provinceVal = $("#province6").val();   // 哪个 省
    var cityVal = $("#city6").val();           // 哪个 市
    var districtVal = $("#district6").val();   // 哪个 县
    /***************判断 新密码 和 确认新密码 逻辑***************/
        // 旧密码 判断
    oldPwd.on("propertychange input focus", function()
    {
        if(/\s/.test(oldPwd.val()))
        {
            warning.html("旧密码不能包含空格");
        }else
        {
            if(oldPwd.val().length < 9)
            {
                warning.html("旧密码密码长度不能小于9");
            }else
            {
                if(!isNaN(oldPwd.val()))
                {
                    warning.html("旧密码必须包含数字和字母");
                }else
                {
                    warning.html("");
                    oldPwdStrg = oldPwd.val();
                }
            }
        }
    });
    oldPwd.blur(function()
    {
        warning.html("");
    });
    // 新密码 判断
    newPwdInput.on("propertychange input focus", function()
    {
        if(/\s/.test(newPwdInput.val()))
        {
            warning.html("新密码不能包含空格");
        }else
        {
            if(newPwdInput.val().length < 9)
            {
                warning.html("新密码密码长度不能小于9");
            }else
            {
                if(!isNaN(newPwdInput.val()))
                {
                    warning.html("新密码必须包含数字和字母");
                }else
                {
                    warning.html("");
                    newPwdStrg = newPwdInput.val();
                }
            }
        }
    });
    newPwdInput.blur(function()
    {
        warning.html("");
    });
    // 确认密码 判断
    reNewPwdInput.on("propertychange input focus", function()
    {
        if(newPwdStrg == null)
        {
            warning.html("请在确认密码之前正确输入新密码");
        }else
        {
            if(reNewPwdInput.val() != newPwdStrg)
            {
                warning.html("两次新密码输入不一致,请重新输入确认新密码");
            }else
            {
                warning.html("");
                reNewPwdStrg = reNewPwdInput.val();
            }
        }
    });
    reNewPwdInput.blur(function()
    {
        warning.html("");
    });
    /*=========== 实名认证按钮按下事件============*/
    $("#idButton").click(function()
    {
        if(phoneNum.val().length != 0 && qqNum.val().length != 0 && idName.val().length != 0 && idNum.val().length != 0)
        {
            // 依次进行存储: 手机号  QQ号  姓名  身份证号 省 市 区
            phoneStrg = phoneNum.val();
            qqStrg = qqNum.val();
            nameStrg = idName.val();
            idnumStrg = idNum.val();
            provinStrg = provinceVal;
            cityStrg = cityVal;
            disStrg = districtVal;
        }else
        {
            alert("请在确认之前完善你的个人信息");
        }
    });
    /*==============提现密码修改 确认按钮点击事件================*/
    $("#changeButton").click(function()
    {
        if(oldPwdStrg != null && newPwdStrg != null &&reNewPwdStrg != null)
        {
            // 这里可以进行 3 个密码的存储
            console.log(oldPwdStrg);
            console.log(newPwdStrg);
            console.log(reNewPwdStrg);
        }else
        {
            alert("请在确认之前完善你的密码信息");
        }
    })
</script>

</body>
</html>