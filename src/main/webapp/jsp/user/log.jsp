<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <title>登录(Login)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel="stylesheet" href="logReg/css/reset.css">
    <link rel="stylesheet" href="logReg/css/supersized.css">
    <link rel="stylesheet" href="logReg/css/style.css">
    <link rel="stylesheet" href="logReg/css/login.css">

</head>

<body>
<div class="autoBg">
    <div class="page-container" style="position: relative;">
        <h1>登录</h1>
        <form action="<c:url value='/userController/userLogin.do'/>" method="post">
            <input type="text" name="email" class="username" placeholder="请输入您的邮箱号！" id = "eamil">
            <input type="password" name="pwd" class="password" placeholder="请输入您的用户密码！">
            <input type="text" class="Captcha" name="Captcha"  id = "captcha"placeholder="请输入验证码！">
            <div id="vCode">
            <img id="vCodeImg"  src="<c:url value='/vCode.do'/>">
            </div><br>
            <div id="codeMsgDiv">
            	<label><span id="codeMsg"></span></label>
            </div>
            <button type="submit" class="submit_button">登录</button>
            <ul class="e_mailExample" >

            </ul>
        </form>
        <ul class="jumpInfor">
           <li style="float: left;text-align: left;"><a href="">忘记密码?</a></li>
           <li style="float: right;text-align: right;"><a href="reg.jsp">没有账号?请注册</a></li>
        </ul>
    </div>
</div>

<!-- Javascript -->
<script src="logReg/regJs/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="logReg/logJs/scripts.js" ></script>
<script src="logReg/logJs/logLogic.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#vCode").dblclick(function(){
		$("#vCodeImg").attr("src", "/kuang3/vCode.do?a=" + new Date().getTime());
	});
	$("#captcha").blur(function(){
		var captcha = $(this).val();
		$.post(
			"/kuang3/userController/valiCaptcha.do",
			{"captcha":captcha},
			function(data){
				//alert(data.message);
				if(data.message=="nopass"){
					$("#codeMsg").text("验证码不正确").addClass("error");
				}else{
					$("#codeMsg").text("验证码正确").addClass("correct");
				}
			
			}
		)
	});

});
</script>
</body>

</html>