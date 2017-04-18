<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="logReg/css/register.css">

</head>
<body>
<div id="mask_reg">
    <div id="register_show" style="position: relative;">
        <h1>注册</h1>
        <form id="regUnameForm" action="<c:url  value='/userController/reg.do'/>" method="post">
            <div class="reg_set" style="top: 80px;">
                邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱
                <input id="reg_email" class="inp_set" type="text" value="" placeholder="请输入邮箱号进行注册" name="email" />
                <ul class="e_mailExample" >

                </ul>
            </div>
            <div class="reg_set" style="top: 140px;">
                密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码
                <input id="reg_email_password" class="inp_set" type="text" value="" placeholder="密码长度6-16,不能包含空格,不能为九位以下纯数字" name="pwd"/>
                <ul class="pwd_error" >

                </ul>
            </div>
            <div class="reg_set" style="top: 200px;">
                确认密码
                <input id="reg_email_repassword" class="inp_set" placeholder="密码长度6-16,不能包含空格,不能为九位以下纯数字" type="text" name="repwd"/>
                <ul class="repwd_error" >

                </ul>
            </div>
            <!--<div class="reg_set" style="top: 260px;">-->
                <!--验&nbsp;&nbsp;证&nbsp;&nbsp;码-->
                <!--<input id="reg_email_check" class="inp_set" style="width: 150px;" type="text"/>-->
            <!--</div>-->
            <div class="reg_set" style="top: 260px;">
                手&nbsp;&nbsp;机&nbsp;&nbsp;号
                <input id="reg_phone" class="inp_set" type="text" value="" placeholder="请输入手机号进行绑定" name="phone"/>
            </div>
            <!--<div class="reg_set" style="top: 380px;">-->
                <!--验&nbsp;&nbsp;证&nbsp;&nbsp;码-->
                <!--<input id="reg_phone_check" class="inp_set"  style="width: 150px;" type="text"/>-->
            <!--</div>-->
            <input id="address" name="address" type="hidden">
        </form>
        <div class="reg_set" style="top: 320px;height: 42px;width: 100%;">
            详细地址
            <form id="regLocalForm" class="form-inline" style="margin-top: 10px;margin-left: -40px;">
                <ul id="distpicker3">
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

        <button id="regButton" class="reg_button" type="submit" style="top: 440px">立即注册</button>
        <ul class="jumpInfor" style="margin-top: 460px">
            <li style="float: right;text-align: right;"><a href="log.jsp">已有账号?请登陆</a></li>
        </ul>
    </div>

</div>

<script src="logReg/regJs/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="logReg/regJs/distpicker.data.min.js"></script>
<script src="logReg/regJs/distpicker.min.js"></script>
<script src="logReg/regJs/main.js"></script>
<script src="logReg/regJs/regLogic.js"></script>


</body>
</html>