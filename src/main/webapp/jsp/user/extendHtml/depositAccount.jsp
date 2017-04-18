<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--充值提现: 分为充值、 提现两个页面; 此为提现页面-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../libs/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../css/indexCSS.css"/>

</head>
<body>
<!--顶部个人信息-->
<div class="user_info">
    <div class="user_asset">
        持有:<input type="text"/>
        生产总值:<input type="text"/>
    </div>
    <div class="user_id">
        ID:<input type="text"/>
        邮箱:<input type="text"/>
    </div>
</div>
<!--头部导航-->
<div class="head_nav">
    <!-- 左边矿三 Logo-->
    <a href=""><img src="../imgs/u9.png" alt=""/></a>
    <!-- 右边导航栏-->
    <ul class="layui-nav" id="layuiNav" style="float: right;">
        <li class="layui-nav-item"><a href="">首页</a></li>
        <li class="layui-nav-item"><a href="<c:url value='/userController/listMyInfo.do'/>">我的账户</a></li>
        <li class="layui-nav-item" style="background-color: #009688;"><a href="../extendHtml/rechargeAccount.jsp">充值提现</a></li>
        <li class="layui-nav-item"><a href="../extendHtml/buyMachine_A721.jsp">矿机购买</a></li>
        <li class="layui-nav-item"><a href="../extendHtml/accountSet.jsp">账户设置</a></li>
    </ul>
</div>
<!--提现-->
<div>
    <ul>
        <li><a href="../extendHtml/rechargeAccount.jsp">充值</a></li>
        <li><a href="">提现</a></li>
    </ul>
</div>
<!--提现表单-->
<form action="">
    提现数额: <input type="text"/><p>BTC, 最小提现额度为0.001BTC, 折合为: ￥200.25</p>
    提款密码: <input type="password"/><a href="">设置提款密码</a>
    支付宝账号: <input type="text"/>
    验证码: <input type="text"/> <img src="" alt=""/><a href="">看不清?换一张</a>
    <button type="button">确认</button>
</form>

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