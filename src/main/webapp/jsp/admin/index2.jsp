<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>后台练习</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="libs/layui-v1.0.9_rls/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="css/index2.css"/>
    <link rel="stylesheet" href="css/extendCss.css"/>
    <script src="libs/jquery-3.1.0.js"></script>
    <script src="libs/echarts.common.min.js"></script>
    
    <style>
    </style>

</head>
<body>
<!--头部导航栏-->
<ul style="position: relative;padding: 0 0;" class="layui-nav kuang-nav">
    <li class="layui-nav-item kuang-nav-log">
        <a style="padding: 0 0;" href="javascript:;">
            <img style="width: 200px;height: 45px;" src="imgs/index/u9.png" alt=""/>
        </a>
    </li>
    <li style="vertical-align: middle;line-height: 23px;" class="layui-nav-item">
        <p><span style="font-size: 36px; color: #fff ;font-weight: 400; font-style: normal;"> | </span></p>
    </li>
    <li style="vertical-align: middle;line-height: 23px;" class="layui-nav-item">
        <p><span>后台系统</span></p>
        <p><span>background system</span></p>
    </li>
</ul>
<!--侧边导航条-->
<div style="float: left; width: 200px; height: 920px; background-color: #393D49;">
    <ul id="BgSystem" class="layui-nav layui-nav-tree"  lay-filter="demo">
        <li class="layui-nav-item layui-nav-itemed list" onclick="reDrawTotalView()">
            <a href="">概览</a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">用户分析</a>
            <dl class="layui-nav-child">
                <dd class="list" onclick="javascript:reDrawIPView()"><a href="javascript:;">IP浏览量</a></dd>
                <dd class="list" onclick="javascript:reDrawNewUser()"><a href="javascript:;">新增用户量</a></dd>
                <dd class="list" onclick="javascript:reDrawUserTran()"><a href="javascript:;">用户转化率</a></dd>
                <dd class="list" onclick="javascript:reDrawUserSelect()"><a href="javascript:;">用户查询</a></dd>
                <dd class="list" onclick="javascript:reDrawActAnalyze()"><a href="javascript:;">活跃分析</a></dd>
                <dd class="list" onclick="javascript:reDrawUserKeep()"><a href="javascript:;">留存分析</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">营收分析</a>
            <dl class="layui-nav-child">
                <dd class="list" onclick="javascript:reDrawPayUser()"><a href="javascript:;">充值用户</a></dd>
                <dd class="list" onclick="javascript:reDrawPayRate()"><a href="javascript:;">充值率</a></dd>
                <dd class="list" onclick="javascript:reDrawPayTotal()"><a href="javascript:;">充值总额</a></dd>
                <dd class="list" onclick="javascript:reDrawUserBitTotal()"><a href="javascript:;">用户比特币总额</a></dd>
                <dd class="list" onclick="javascript:reDrawUserBitRate()"><a href="javascript:;">比特币使用率</a></dd>
                <dd class="list" onclick="javascript:reDrawMaintenance()"><a href="javascript:;">维护费</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">提现分析</a>
            <dl class="layui-nav-child">
                <dd class="list" onclick="javascript:reDrawGetMoneyUser()"><a href="javascript:;">提现用户</a></dd>
                <dd class="list" onclick="javascript:reDrawEarnTotal()"><a href="javascript:;">提现总额</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;">矿机管理</a></li>
        <li class="layui-nav-item"><a href="javascript:;">订单管理</a></li>
    </ul>
</div>
<!-- +++++++ 这是分割线, 以下就是需要定向替换内容 ++++++-->
<!--内容一: 概览模块-->
<div class="firstConTotalView " style="display: inline-block; position: relative;top: 100px;left: 100px; width: 1120px;">
    <table id="TotalView" class="totalView" style="border: solid 1px #000000; background-color: #009688;">
        <thead style="border-top: solid 1px #000000;border-left: solid 1px #000000;text-align: center;">
        <tr style="height: 60px;border-bottom: 1px solid;">
            <th style="width: 100px;">时间</th>
            <th style="width: 100px;">IP浏览量</th>
            <th style="width: 100px;">用户注册量</th>
            <th style="width: 100px;">充值总额</th>
            <th style="width: 100px;">充值总金额</th>
            <th style="width: 100px;">提现额度</th>
            <th style="width: 100px;">体现总金额</th>
            <th style="width: 100px;">矿机销售量</th>
            <th style="width: 100px;">销售总额</th>
            <th style="width: 100px;">维护费</th>
            <th style="width: 100px;">月活跃用户</th>
        </tr>
        </thead>
        <tbody>
        <tr class="today" style="height: 60px;border-bottom: 1px solid;">
            <td>今天</td>
        </tr>
        <tr class="yesterday" style="height: 60px;border-bottom: 1px solid;">
            <td>昨天</td>
        </tr>
        <tr class="week" style="height: 60px;border-bottom: 1px solid;">
            <td>周总</td>
        </tr>
        <tr class="sum" style="height: 60px;border-bottom: 1px solid;">
            <td>总计</td>
        </tr>
        </tbody>
    </table>
</div>
<!--内容二: 折线图模块-->
<div style=" float: left">
    <div class="layui-form-pane" style="margin-top: 75px;margin-left: 150px;">
        <div class="layui-form-item" style="display:block;position: relative;">
            <form id="dataForm" action="" >
                <label class="layui-form-label">范围选择</label>
                <div class="layui-input-inline">
                    <input name="inputStartDate" class="layui-input" placeholder="开始日" id="LAY_demorange_s">
                </div>
                <div class="layui-input-inline">
                    <input name="inputEndDate" class="layui-input" placeholder="截止日" id="LAY_demorange_e">
                </div>
            </form>
            <button id="button">按钮</button>
        </div>
    </div>
    <div class="secondConLineChart" id="main" style="display:none;width: 1000px;height:600px;margin: 30px 145px;"></div>
    <!--内容三: 表格模块-->
    <div class="thirdConTable tableDiv" style="display: none">
        <div id="bookList">
            <table cellspacing="0" cellpadding="0">
                <tbody id="biuuu_city_list">

                </tbody>
            </table>
            <!--分页栏-->
            <div id="pagingLang"></div>
        </div>
    </div>
</div>

<!--内容四: 用户查询框-->
<div class="fourthConSelect" style="display: none;">
    <form action="">
        <input class="b_searchbox" id="" name="" title="输入搜索词" placeholder="输入搜索词" type="search" >
        <input type="button" class="b_searchboxSubmit" id="sb_form_go" title="搜索" name="go">
    </form>
</div>


<script src="libs/layui-v1.0.9_rls/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('element', function(){
        var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
        element.on('nav(demo)', function(elem) //监听导航点击
        {

        });
    });
    layui.use('form', function(){
        var $ = layui.jquery, form = layui.form();

        //全选
        form.on('checkbox(allChoose)', function(data){
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function(index, item){
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });

    });
    /*创建时间选择器*/
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        var start = {
            max: laydate.now(),
            istoday: false,
            choose: function(datas){
                end.min = datas;      //开始日选好后，重置结束日的最小日期
                end.start = datas;    //将结束日的初始值设定为开始日
            }
        };
        var end = {
            max: laydate.now(),
            istoday: false,
            choose: function(datas){
                start.max = datas;    //结束日选好后，重置开始日的最大日期
            }
        };
        document.getElementById('LAY_demorange_s').onclick = function()
        {
            start.elem = this;
            laydate(start);
        };
        document.getElementById('LAY_demorange_e').onclick = function()
        {
            end.elem = this;
            laydate(end);
        }

    });
</script>
<!--概览-->
<script src="js/selectTotalView.js"></script>
<script>
    reDrawTotalView();
</script>
<!--折线图-->
<script src="js/lineJs/selectIPView.js"></script>
<script src="js/lineJs/selectNewUser.js"></script>
<script src="js/lineJs/selectPayUser.js"></script>
<script src="js/lineJs/selectUserBitTotal.js"></script>
<script src="js/lineJs/selectGetMoneyUser.js"></script>
<!--表格-->
<script src="js/tableJs/selectPayTotal2.js"></script>
<script src="js/tableJs/selectEarnTotal2.js"></script>
<!--扩展折线图-->
<script src="js/extendLineJs/selectUserTran.js"></script>
<script src="js/extendLineJs/selectUserKeep.js"></script>
<script src="js/extendLineJs/selectPayRate.js"></script>
<script src="js/extendLineJs/selectUserBitRate.js"></script>
<script src="js/extendLineJs/selectMaintenance.js"></script>
<!--扩展折线图2-->
<script src="js/extendJs/selectUserSelect.js"></script>
<script src="js/extendJs/selectActAnalyze.js"></script>
</body>
</html>