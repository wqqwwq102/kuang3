/*用户转化率折线图*/
function reDrawUserTran()
{
    var firstCon = document.getElementsByClassName("firstConTotalView")[0];
    var secondCon = document.getElementsByClassName("secondConLineChart")[0];
    var thirdCon = document.getElementsByClassName("thirdConTable")[0];
    firstCon.style.display = "none";
    secondCon.style.display = "block";
    thirdCon.style.display = "none";
    var myChart = echarts.init(document.getElementById('main'));   // 首次进来时初始化图表
    var startBut = document.getElementById("button");
    var startTime, endTime;   // 用户输入的 查询间隔期

    /*初始化图表函数*/
    function initChart()
    {
        myChart.setOption({
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                feature: {
                    dataView: {
                        show: true,
                        readOnly: false
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            grid: {
                containLabel: true
            },
            legend: {
                data: ['用户转化率']
            },
            xAxis: [{
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                data: []
            }],
            yAxis: [{
                type: 'value',
                name: '用户转化率',
                min: 0,
                max: 100,
                position: 'left',
                axisLabel: {
                    formatter: '{value} %'
                }
            }],
            series: [{
                name: '用户转化率',
                type: 'line',
                label: {
                    normal: {
                        show: true,
                        position: 'top'
                    }
                },
                lineStyle: {
                    normal: {
                        width: 3,
                        shadowColor: 'rgba(0,0,0,0.4)',
                        shadowBlur: 5,
                        shadowOffsetY: 5
                    }
                },
                data: []
            }]
        });
    }
    initChart();

    /*点击开始按钮, 计算出间隔期内天数且用 y-m-d 形式表示, 设置这些数据, 再次绘制图表*/
    var dataLen;             // 获取数据的长度, 即多少条数据
    var timerArr = [];       // 用于接收数据中的 date
    var timerTranArr = [];   // 用于接收数据中的 date 转化成 y/m/d 格式时间
    var newUserNumArr = [];  // 用于接收后台的 当天新用户量 数据
    var IpNumArr = [];       // 用于接收后台的 总ip浏览量 数据
    var UserTranRateArr = [];// 用于接收 转化率(当天新用户量/总ip浏览量 (取两位小数)) 数据
    var dataZoomEndVal;      // 用于设置线图下的时间轴滑动杆的长度; 时间过长设置动杆可滑, 反则不可滑
    startBut.onclick = function()
    {
        // 以下两个时间分别是 时间选择框内的 开始  和  结束 时间
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
                    newUserNumArr[j] = 0;
                    IpNumArr[j] = 0;
                    UserTranRateArr[j] = 0;
                    i=i-1;
                }else
                {
                    timerArr[j]=timerz;
                    timerTranArr[j] = getLocalTime(timerArr[j]).substr(0,17);
                    newUserNumArr[j] = data.data[i].newUserNum;           // 当天 注册用户量
                    IpNumArr[j] = data.data[i].iPNumber;                  // 当天 ip浏览量
                    UserTranRateArr[j] = (newUserNumArr[j] / IpNumArr[j]).toFixed(2);  // 用户转化率
                }
                j=j+1;

                timestamp2=timestamp2+24*60*60*1000;
            }
            if(dataLen <= 10)
            {
                dataZoomEndVal = 100
            }else
            {
                dataZoomEndVal = 60
            }
            lode();
        })
    };
    function lode()
    {
        myChart.setOption({
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                feature: {
                    dataView: {
                        show: true,
                        readOnly: false
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            grid: {
                containLabel: true
            },
            legend: {
                data: ['用户转化率']
            },
            dataZoom:[    // 这个dataZoom组件，默认控制x轴
                {
                    height: 15,
                    type: 'slider',         // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                    start: 0,               // 左边在 0% 的位置。
                    end: dataZoomEndVal     // 右边在 60% 的位置。
                }
            ],
            xAxis: [{
                type: 'category',
                axisTick: {
                    alignWithLabel: true
                },
                data: timerTranArr
            }],
            yAxis: [{
                type: 'value',
                name: '用户转化率',
                min: 0,
                max: 100,
                position: 'left',
                axisLabel: {
                    formatter: '{value} %'
                }
            }],
            series: [{
                name: '用户转化率',
                type: 'line',
                label: {
                    normal: {
                        show: true,
                        position: 'top'
                    }
                },
                lineStyle: {
                    normal: {
                        width: 3,
                        shadowColor: 'rgba(0,0,0,0.4)',
                        shadowBlur: 5,
                        shadowOffsetY: 5
                    }
                },
                data: UserTranRateArr
            }]
        });
        timerArr = [];
        timerTranArr = [];
        newUserNumArr = [];
        IpNumArr = [];
        UserTranRateArr = []
    }
}