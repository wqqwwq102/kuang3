/**
 * Created by Sun on 2017/4/6.
 * 用户查询
 */
function reDrawUserSelect()
{
    var firstCon = document.getElementsByClassName("firstConTotalView")[0];
    var secondCon = document.getElementsByClassName("secondConLineChart")[0];
    var thirdCon = document.getElementsByClassName("thirdConTable")[0];
    firstCon.style.display = "none";
    secondCon.style.display = "none";
    thirdCon.style.display = "none";
    var dateCon = document.getElementsByClassName("layui-form-item")[0];
    dateCon.style.display = "none";
    var fourthCon = document.getElementsByClassName("fourthConSelect")[0];
    fourthCon.style.display = "block"
}