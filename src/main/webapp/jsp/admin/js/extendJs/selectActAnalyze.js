/**
 * Created by Sun on 2017/4/6.
 * 活跃分析表格
 */
function reDrawActAnalyze()
{
    var firstCon = document.getElementsByClassName("firstConTotalView")[0];
    var secondCon = document.getElementsByClassName("secondConLineChart")[0];
    var thirdCon = document.getElementsByClassName("thirdConTable")[0];
    firstCon.style.display = "none";
    secondCon.style.display = "none";
    thirdCon.style.display = "block";
    firstCon.innerHTML = '';
    var startBut = document.getElementById("button");
    var startTime, endTime;              // 用户输入的查询间隔期
    var td = document.getElementsByTagName("td");
    var th = document.getElementsByTagName("th");
    var tdLen = document.getElementsByTagName("td").length;
    var dataLen = 0;             // 获取数据的长度, 即多少条数据
    var timerArr = [];       // 用于接收数据中的 date
    var timerTranArr = [];   // 用于接收数据中的 date 转化成 y/m/d 格式时间
    var DAUnumArr = [];  // 当天登陆用户量
    var WEUnumArr = [];  // 当天前七天(包含当天)登陆用户量
    var MAUnumArr = [];  // 当天前三十天(包含当天)登陆用户量
    var RatenumArr = [];  // DAU / MAU (保留两位小数)

    tableShow();
    /*点击开始按钮, 计算出间隔期内天数且用 y-m-d 形式表示, 设置这些数据, 再次绘制图表*/
    startBut.onclick = function()
    {
        startTime = document.getElementById('LAY_demorange_s').value;
        endTime = document.getElementById('LAY_demorange_e').value;
        // 调用jquery 的 ajax 方法 获取到返回的数据, 再进行 json 解析
        $.post("http://localhost:8080/bitCoin/manager/newUser.do?start="+startTime+"&end="+endTime,$("#dataForm").serialize(),function(data)
        {
            dataLen = data.data.length;
            function getLocalTime(nS)
            {
                return new Date(parseInt(nS)).toLocaleString().substr(0,17)
            }
            var j=0;
            var timestamp2 = Date.parse(new Date(startTime))-8*60*60*1000;
            var timestamp3 = Date.parse(new Date(endTime))-8*60*60*1000;

            for(var i = 0; timestamp2 <= timestamp3; i++)
            {
                var timerz = data.data[i].date;
                if(timestamp2!=timerz)
                {
                    timerArr[j]=timestamp2;
                    timerTranArr[j] = getLocalTime(timerArr[j]).substr(0,17);
                    DAUnumArr[j] = 0;
                    WEUnumArr[j] = 0;
                    MAUnumArr[j] = 0;
                    RatenumArr[j] = 0;
                    i=i-1;
                }else
                {
                    timerArr[j]=timerz;
                    timerTranArr[j] = getLocalTime(timerArr[j]).substr(0,17);
                    DAUnumArr[j] = data.data[i].DAUnum;   // DAU 数据
                    WEUnumArr[j] = data.data[i].WEUnum;   // WEU 数据
                    MAUnumArr[j] = data.data[i].MAUnum;   // MAU 数据
                    RatenumArr[j] = (DAUnumArr[j] / MAUnumArr[j]).toFixed(2);  // DAU / MAU 数据
                }
                j=j+1;

                timestamp2=timestamp2+24*60*60*1000;
            }
            tableShow();
        })
    };
// 分页实现
    function tableShow()
    {
        layui.use(['laypage', 'layer'], function()
        {
            var laypage = layui.laypage;
            var nums = 10; //每页出现的数据量
            //模拟渲染
            var render = function(curr)
            {
                var str = '';
                var last = curr*nums - 1;
                last = last >= dataLen ? (dataLen-1) : last;
                for(var i = (curr*nums - nums); i <= last; i++)
                {
                    str += '<tr><td>'+timerTranArr[i]+'</td>';
                    str += '<td>'+DAUnumArr[i]+'</td>';
                    str += '<td>'+WEUnumArr[i]+'</td>';
                    str += '<td>'+MAUnumArr[i]+'</td>';
                    str += '<td>'+RatenumArr[i]+'</td></tr>';
                }
                return str;
            };
//        调用分页
            laypage({
                cont: 'pagingLang',
                pages: Math.ceil(dataLen/nums), //得到总页数
                jump: function(obj)
                {
                    var tbody = document.getElementsByTagName('tbody')[0];
                    tbody.innerHTML = '';
                    var text = "<th>时间</th> <th>DAU</th> <th>WEU</th> <th>MAU</th> <th>DAU/MAU</th>" + render(obj.curr);
                    tbody.innerHTML = text;
                    for(var m = 0; m < 5; m++)
                    {
                        th[m].width = "160px";
                    }
                    for(var j = 0; j < tdLen; j++)
                    {
                        td[j].width = "160px";
                    }
                },
                skip: true
            });
        });
    }
}




