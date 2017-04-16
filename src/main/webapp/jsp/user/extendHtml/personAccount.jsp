<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--账户设置-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的账户</title>
    <link rel="stylesheet" type="text/css"  href="../css/style.css">
    <link rel="stylesheet" type="text/css"  href="../css/263.css">
    <link rel="stylesheet" href="../libs/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../css/indexCSS.css"/>
    <style>
        body
        {
            width: 100%;
            height:  100% !important;
            background: url("../imgs/g8.png") repeat fixed center;
            color: #fff;
        }
        .centreCon
        {
            position: relative;
            width: 1344px;
            height: 1733px;
            margin: 0 auto;
            top: 30px;
            background: url(../imgs/buySprite.png) no-repeat;
            background-position: -34px -1088px;
        }
        .centreCon .centreCon_up
        {
            position: absolute;
            width: 98%;
            height: 899px;
            top: 0;
            background: url("../imgs/mySprite.png") no-repeat;
            background-position: -277px -1500px;
        }
        .centreCon .centreCon_up .up_list
        {
            position: absolute;
            top: 222px;
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
        .centreCon .centreCon_up .up_list .up_list_kind
        {
            position: absolute;
            width: 324px;
            height: 136px;
            left: 55px;
        }
        .centreCon .centreCon_up .up_list .up_list_1
        {
            top: -30px;
            left: 200px;
            animation:myfirst_1 1.5s;
            -moz-animation:myfirst_1 1.5s; /* Firefox */
            -webkit-animation:myfirst_1 1.5s; /* Safari and Chrome */
            -o-animation:myfirst_1 1.5s; /* Opera */
        }
        @keyframes myfirst_1
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-moz-keyframes myfirst_1 /* Firefox */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-webkit-keyframes myfirst_1 /* Safari and Chrome */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }

        @-o-keyframes myfirst_1 /* Opera */
        {
            0% {  opacity: 0; left: -1100px;  }
            100% {  left: 200px; }
        }
        .centreCon .centreCon_up .up_list .up_list_2
        {
            top: 30px;
        }
        .centreCon .centreCon_up .up_list .up_list_3
        {
            top: 90px;
        }
        .centreCon .centreCon_up .up_list .up_list_4
        {
            top: 150px;
        }
        .centreCon .centreCon_up .up_list a
        {
            display: block;
            position: absolute;
            top: 25px;
            left: 13px;
            width: 200px;
            height: 55px;
            border-radius: 10px;
            z-index: 9;
        }
        .centreCon .centreCon_up .up_list a:hover
        {
            background: rgba(0, 0, 0, .3);
        }
        .centreCon .centreCon_up .up_machineNum
        {
            position: absolute;
            width: 837px;
            height: 400px;
            top: 236px;
            right: 66px;
            background: url(../singlePhoto/machineNum.fw.png);
        }
        #machineNum
        {
            position: absolute;
            top: 168px;
            left: 296px;
            width: 500px;
            height: 220px;
            color: #009986;
        }
        #machineNum tr th
        {
            width: 200px;
            height: 50px;
            text-align: center;
            font-size: 16px;
        }
        #machineNum tr td
        {
            width: 200px;
            height: 50px;
            text-align: center;
            font-size: 14px;
        }
        .centreCon .centreCon_up .up_earning
        {
            position: absolute;
            width: 1100px;
            height: 180px;
            top: 628px;
            right: 0px;
            background: url(../singlePhoto/earnings.fw.png) no-repeat;
            background-position: 0px -218px;
        }
        #earning
        {
            position: absolute;
            top: 88px;
            left: 245px;
            width: 822px;
            height: 70px;
            color: #009986;

        }
        #earning tr td
        {
            width: 206px;
            height: 70px;
            text-align: center;
            font-size: 18px;
        }
        .centreCon .centreCon_down
        {
            position: relative;
            width: 1322px;
            height: 720px;
            top: 840px;
            left: 50px;
            text-align: center;
            background: url("../singlePhoto/table.fw.png") no-repeat;
            background-position: -64px -55px;
        }
        #order
        {
            position: absolute;
            top: 11px;
            left: 10px;
            width: 1190px;
            height: 600px;
            color: #009986;
        }
        #order tr
        {
            height: 74px;
        }
        #order tr th
        {
            text-align: center;
            font-size: 20px;
        }
        #order tr td
        {
            text-align: center;
            font-size: 18px;
        }
        #pagingLang .layui-box a
        {
            background-color: #000;
            color: #fff;
            border: 1px solid #009688;
        }
        #pagingLang .layui-box .layui-laypage-next
        {
            border-right: 0;
        }
        #pagingLang .layui-laypage-total
        {
            background-color: #000;
            color: #fff;
        }
        #pagingLang span
        {
            background-color: #000;
            color: #fff;
            border: 1px solid #009688;
            border-left: 0;
        }
        #pagingLang span input
        {
            background-color: #000;
            color: #fff;
            border: 0px;
        }
        #pagingLang span button
        {
            background-color: #000;
            color: #fff;
            border: 0;
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

        /*@-moz-keyframes pubAni /!* Firefox *!/*/
        /*{*/
            /*0% {  opacity: 0;  }*/
            /*50% {  opacity: 0; }*/
            /*100% {  opacity: 1; }*/
        /*}*/

        /*@-webkit-keyframes pubAni /!* Safari and Chrome *!/*/
        /*{*/
            /*0% {  opacity: 0;  }*/
            /*50% {  opacity: 0; }*/
            /*100% {  opacity: 1; }*/
        /*}*/

        /*@-o-keyframes pubAni /!* Opera *!/*/
        /*{*/
            /*0% {  opacity: 0;  }*/
            /*50% {  opacity: 0; }*/
            /*100% {  opacity: 1; }*/
        /*}*/
    </style>
</head>
<body>
<!--顶部个人信息-->
<div class="user_info">
    <div class="user_asset">
        持有:<span></span>
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
            <li class="navitem"><a class="active" href="#" target="_self" href="#" >我的账户 </a> </li>
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
    <div class="centreCon_up">
        <!-- 跳转按钮-->
        <div class="up_list">
            <div class="up_list_1 up_list_kind"><a href="#"></a><img src="../singlePhoto/myAccount.fw.png" alt=""/></div>
            <div class="up_list_2 up_list_kind"><a href="#"></a><img src="../singlePhoto/recharge.fw.png" alt=""/></div>
            <div class="up_list_3 up_list_kind"><a href="../extendHtml/buyMachine.jsp"></a><img src="../singlePhoto/buyMachine.fw.png" alt=""/></div>
            <div class="up_list_4 up_list_kind"><a href="../extendHtml/accountSet.jsp"></a><img src="../singlePhoto/accountSet.fw.png" alt=""/></div>
        </div>
        <!-- 矿机数量-->
        <div class="up_machineNum publicAni">
            <table id="machineNum">
                <tr>
                    <th>阿瓦隆-A741</th>
                    <th>阿瓦隆-A721</th>
                </tr>
                <tr>
                    <td>发斯蒂芬</td>
                    <td>--</td>
                </tr>
                <tr>
                    <th>蚂蚁-S9</th>
                    <th>蚂蚁-S7</th>
                </tr>
                <tr>
                    <td>--</td>
                    <td>--</td>
                </tr>
            </table>
        </div>
        <!-- 矿机收益-->
        <div class="up_earning publicAni">
            <table id="earning">
                <tr>
                    <td>sun</td>
                    <td>sun</td>
                    <td>sun</td>
                    <td>sun</td>
                </tr>
            </table>
        </div>
    </div>
    <!-- 订单信息-->
    <div class="centreCon_down publicAni">
        <table id="order" cellspacing="0" cellpadding="0">
            <tbody id="biuuu_city_list">

            </tbody>
        </table>
        <!--分页栏-->
        <div id="pagingLang" style="position: absolute;top: 615px; left: 735px;"></div>
    </div>
</div>


<script src="../libs/layui/layui.js" charset="utf-8"></script>
<script src="../js/citySelect/jquery-1.11.0.min.js"></script>
<script src="../js/citySelect/distpicker.data.min.js"></script>
<script src="../js/citySelect/distpicker.min.js"></script>

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
<script>
    var td = document.getElementsByTagName("td");
    var th = document.getElementsByTagName("th");
    var tdLen = document.getElementsByTagName("td").length;
    var data =
    {
        data:[11, 22, 33, 44, 55, 66, 77, 11, 22, 33, 44],
        time:[1, 2, 3, 4, 5, 6, 7, 11, 22, 33, 44],
        time2:[1, 2, 3, 4, 5, 6, 7, 11, 22, 33, 44],
        time3:[1, 2, 3, 4, 5, 6, 7, 11, 22, 33, 44],
        time4:[1, 2, 3, 4, 5, 6, 7, 11, 22, 33, 44],
        time5:[1, 2, 3, 4, 5, 6, 7, 11, 22, 33, 44]
    };
    var dataLen = data.data.length;
    tableShow();
    // 分页实现
    function tableShow()
    {

        layui.use(['laypage', 'layer'], function()
        {
            var laypage = layui.laypage;
            var nums = 7; //每页出现的数据量
            // 模拟渲染
            var render = function(curr)
            {
                var str = '';
                var last = curr*nums - 1;
                last = last >= dataLen ? (dataLen-1) : last;
                for(var i = (curr*nums - nums); i <= last; i++)
                {
                    str += '<tr><td>'+data.data[i]+'</td>';
                    str += '<td>'+data.time2[i]+'</td>';
                    str += '<td>'+data.time3[i]+'</td>';
                    str += '<td>'+data.time4[i]+'</td>';
                    str += '<td>'+data.time5[i]+'</td>';
                    str += '<td>'+data.time[i]+'</td></tr>';
                }
                return str;
            };
            // 调用分页
            laypage({
                cont: 'pagingLang',
                pages: Math.ceil(dataLen/nums), //得到总页数
                jump: function(obj)
                {
//                    var tbody = document.getElementsByTagName('tbody')[0];
                    var tbody = document.getElementById('biuuu_city_list');
                    tbody.innerHTML = '';
                    var text = "<th>订单编号</th> <th>型号</th> <th>生产力(T/S)</th> <th>收益(BTC)</th> <th>维护费用(￥/T/day)</th> <th>购买时间</th>" + render(obj.curr);
                    tbody.innerHTML = text;
                    for(var m = th.length - 6; m < th.length; m++)
                    {
                        th[m].width = "196px";
                    }
                },
                skip: true
            });
        });
    }

</script>

</body>
</html>