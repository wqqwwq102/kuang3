/**
 * Created by Sun on 2017/3/24.
 */
// 概览表格
function reDrawTotalView()
{
    var firstCon = document.getElementsByClassName("firstConTotalView")[0];
    var secondCon = document.getElementsByClassName("secondConLineChart")[0];
    var thirdCon = document.getElementsByClassName("thirdConTable")[0];
    firstCon.style.display = "inline-block";
    secondCon.style.display = "none";
    thirdCon.style.display = "none";

    var endTime = xxx;                 // 今天
    var startTime = endTime - 7;     // 七天前
    var dataLen = 0;             // 获取数据的长度, 即多少条数据
    var strToday = '';            // 今天这一列的数据
    var strYesterRday = '';       // 昨天这一列的数据
    var strWeek = '';             // 周总这一列的数据
    var strSum = '';              // 总计这一列的数据
    // 定义周总数据
    var IPWeek = UserNumWeek = rechargeBitCoinWeek = rechargeCNYWeek = accountBitCoinWeek = accountCNYWeek =
        saleMachineNumWeek = saleMachineTotalWeek = maintenanceWeek = monthActiveNumWeek = 0;

    $(".today").html(strToday);

    $.post("http://localhost:8080/bitCoin/manager/newUser.do?start="+startTime+"&end="+endTime,function(data)
    {
        dataLen = data.data.length;

        /*今天   这一行的数据接收*/
        strToday += '<td>'+ data.data[6].date +'</td>';               // 时间
        strToday += '<td>'+ data.data[6].ipNum +'</td>';              // IP浏览量
        strToday += '<td>'+ data.data[6].newUserNum +'</td>';         // 用户注册量
        strToday += '<td>'+ data.data[6].rechargeBitCoin +'BTC</td>';    // 充值总额
        strToday += '<td>￥'+ data.data[6].rechargeCNY +'</td>';        // 充值总金额
        strToday += '<td>'+ data.data[6].accountBitCoin +'BTC</td>';     // 提现额度
        strToday += '<td>￥'+ data.data[6].accountCNY +'</td>';         // 提现总金额
        strToday += '<td>'+ data.data[6].saleMachineNum +'</td>';     // 矿机销售量
        strToday += '<td>'+ data.data[6].saleMachineTotal +'BTC</td>';   // 销售总额
        strToday += '<td>￥'+ data.data[6].maintenance +'</td>';        // 维护费
        strToday += '<td>'+ data.data[6].monthActiveNum +'</td>';     // 余额活跃用户

        /*昨天   这一行的数据接收*/
        strYesterRday += '<td>'+ data.data[5].date +'</td>';               // 时间
        strYesterRday += '<td>'+ data.data[5].ipNum +'</td>';              // IP浏览量
        strYesterRday += '<td>'+ data.data[5].newUserNum +'</td>';         // 用户注册量
        strYesterRday += '<td>'+ data.data[5].rechargeBitCoin +'BTC</td>';    // 充值总额
        strYesterRday += '<td>￥'+ data.data[5].rechargeCNY +'</td>';        // 充值总金额
        strYesterRday += '<td>'+ data.data[5].accountBitCoin +'BTC</td>';     // 提现额度
        strYesterRday += '<td>￥'+ data.data[5].accountCNY +'</td>';         // 提现总金额
        strYesterRday += '<td>'+ data.data[5].saleMachineNum +'</td>';     // 矿机销售量
        strYesterRday += '<td>'+ data.data[5].saleMachineTotal +'BTC</td>';   // 销售总额
        strYesterRday += '<td>￥'+ data.data[5].maintenance +'</td>';        // 维护费
        strYesterRday += '<td>'+ data.data[5].monthActiveNum +'</td>';     // 余额活跃用户

        /*周总 这一行的数据接收*/
        for(var i = 0; i < dataLen; i++)
        {
            IPWeek += data.data[i].ipNum;
            UserNumWeek += data.data[i].newUserNum;
            rechargeBitCoinWeek += data.data[i].rechargeBitCoin;
            rechargeCNYWeek += data.data[i].rechargeCNY;
            accountBitCoinWeek += data.data[i].accountBitCoin;
            accountCNYWeek += data.data[i].accountCNY;
            saleMachineNumWeek += data.data[i].saleMachineNum;
            saleMachineTotalWeek += data.data[i].saleMachineTotal;
            maintenanceWeek += data.data[i].maintenance;
            monthActiveNumWeek += data.data[i].monthActiveNum;
        }

        strWeek += "<td>周总</td>";
        strWeek += "<td>"+ UserNumWeek +"</td>";
        strWeek += "<td>"+ rechargeBitCoinWeek +"</td>";
        strWeek += "<td>"+ rechargeBitCoinWeek +"</td>";
        strWeek += "<td>"+ rechargeCNYWeek +"</td>";
        strWeek += "<td>"+ accountBitCoinWeek +"</td>";
        strWeek += "<td>"+ accountCNYWeek +"</td>";
        strWeek += "<td>"+ saleMachineNumWeek +"</td>";
        strWeek += "<td>"+ saleMachineTotalWeek +"</td>";
        strWeek += "<td>"+ maintenanceWeek +"</td>";
        strWeek += "<td>"+ monthActiveNumWeek +"</td>";

        $(".today").html(strToday);
        $(".Yesterday").html(strYesterRday);
        $(".week").html(strWeek);
    });

    /*总计数据接收*/
    $.post("http://localhost:8080/bitCoin/manager/newUser.do?start="+startTime+"&end="+endTime,function(data)
    {
        /*总计   这一行的数据接收*/
        strSum += '<td>'+ 总计 +'</td>';               // 时间
        strSum += '<td>'+ data.data.ipNum +'</td>';              // IP浏览量
        strSum += '<td>'+ data.data.newUserNum +'</td>';         // 用户注册量
        strSum += '<td>'+ data.data.rechargeBitCoin +'BTC</td>';    // 充值总额
        strSum += '<td>￥'+ data.data.rechargeCNY +'</td>';        // 充值总金额
        strSum += '<td>'+ data.data.accountBitCoin +'BTC</td>';     // 提现额度
        strSum += '<td>￥'+ data.data.accountCNY +'</td>';         // 提现总金额
        strSum += '<td>'+ data.data.saleMachineNum +'</td>';     // 矿机销售量
        strSum += '<td>'+ data.data.saleMachineTotal +'BTC</td>';   // 销售总额
        strSum += '<td>￥'+ data.data.maintenance +'</td>';        // 维护费
        strSum += '<td>'+ data.data.monthActiveNum +'</td>';     // 余额活跃用户

        $(".sum").html(strSum);
    })

}