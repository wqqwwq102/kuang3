/**
 * Created by Sun on 2017/3/31.
 */
var logUsernameInput = $(".username");
var logPwdInput = $(".password");
var logCheckInput = $(".Captcha");
var logBut = $(".submit_button");
var e_mailExample = $(".e_mailExample");
var e_mailExample_arr = ["@qq.com", "@163.com", "@sina.cn", "@sina.com", "@139.com"];
var isFirstPra = 0;   // ������ʶ �Ƿ� input �е�һ�γ��� @ ����, ���ɾ���˵�һ������ @, ������Ϊ 0
var logUnameStorage = logPwdStorage = null;

logUsernameInput.val(null);      // ÿ��ˢ��ʹ input ����Ϊ��
logPwdInput.val(null);
logCheckInput.val(null);
/*-----------------���� ����input--------------------*/
// ���� ͨ��jquery���� ����ģ��� ul �е� li �� span ��ʽ
function setLiSpanCSS(str_start)
{
    $(".e_mailExample").html(str_start);
    $(".e_mailExample li").css
    ({
        'cursor':'pointer', 'height': '32px', 'width': '360px','text-align':'left',
        'line-height': '32px', 'margin-left': '0px','border-bottom':'solid 1px rgba(255,255,255,.15)',
        'padding': '0 15px','color': '#fff'
    }).click(function(e)
    {
        logUsernameInput.val(e.target.firstChild.textContent);
    });
    $(".e_mailExample li span").css({'height': '32px', 'line-height' : '32px'});
}
// ���� ���� input ģ����ʾ �� ����
logUsernameInput.focus(function()    //���� ��ʾ
{
    e_mailExample.fadeIn();
    e_mailExample.fadeIn("slow");
    e_mailExample.fadeIn(1000);
    var str_start = "";
    if(logUsernameInput.val().indexOf("@") == -1)      // �� input ֵ��û�� @ ��ʱ��
    {
        for(var i = 0; i < e_mailExample_arr.length; i++)
        {
            str_start += "<li><span >" + logUsernameInput.val() + e_mailExample_arr[i] + "</span></li>";
        }
        setLiSpanCSS(str_start);
        isFirstPra = 0;       //ɾ���˵�һ������ @, ������Ϊ 0
    }else      // �� input ֵ���״γ��� @ ��ʱ��
    {
        isFirstPra++;
        if(isFirstPra >= 1)
        {
            if(isFirstPra == 1)
            {
                replaceUnameVal = logUsernameInput.val().substring(0, logUsernameInput.val().indexOf("@"));
            }
            for(var i = 0; i < e_mailExample_arr.length; i++)
            {
                str_start += "<li><span>" + replaceUnameVal + e_mailExample_arr[i] + "</span></li>";
            }
        }
        setLiSpanCSS(str_start);
    }
    $(".e_mailExample li").click(function(e)
    {
        if(logUsernameInput.val().indexOf("@") == -1)
        {
            logUsernameInput.val(e.target.firstChild.textContent);
            isFirstPra = 0;
        }else
        {
            isFirstPra++;
            if(isFirstPra >= 1)
            {
                if(isFirstPra == 1)
                {
                    replaceUnameVal = logUsernameInput.val().substring(0, logUsernameInput.val().indexOf("@"));
                }
                for(var i = 0; i < e_mailExample_arr.length; i++)
                {
                    $(".e_mailExample li").eq(i).html( replaceUnameVal + e_mailExample_arr[i]);
                }
            }
        }
    });
    //���� ����input ���̵��� (keyup) �¼�, ʱ�̼�������ģ��
    logUsernameInput.bind("propertychange input",function()
    {
        if(logUsernameInput.val().indexOf("@") == -1)      //û������ @ ��ʱ��
        {
            for(var i = 0; i < e_mailExample_arr.length; i++)
            {
                $(".e_mailExample li").eq(i).html(logUsernameInput.val() + e_mailExample_arr[i]);
            }
            isFirstPra = 0;               //ɾ���˵�һ������� @, ������Ϊ 0
        }else                             //������ @ ��ʱ��
        {
            isFirstPra++;
            if(isFirstPra >= 1)
            {
                if(isFirstPra == 1)
                {
                    //replaceUnameVal = usernameInput.val().replace(/\@/, "");
                    replaceUnameVal = logUsernameInput.val().substring(0, logUsernameInput.val().indexOf("@"));
                }
                for(var i = 0; i < e_mailExample_arr.length; i++)
                {
                    $(".e_mailExample li").eq(i).html( replaceUnameVal + e_mailExample_arr[i]);
                }
            }
        }
    });
});
logUsernameInput.blur(function()    // ʧ�� ����
{
    e_mailExample.fadeOut();
    e_mailExample.fadeOut("slow");
    e_mailExample.fadeOut(500);
});
/*-------���� ��ť����¼�-------*/
logBut.click(function()
{
    if(logUsernameInput.val().indexOf("@") != -1)    // ���� input ֵ���� @ ��洢
    {
        logUnameStorage = logUsernameInput.val();
    }else
    {
        logUnameStorage = null;
    }
    if(logPwdInput.val() != null)
    {
        logPwdStorage = logPwdInput.val();
    }else
    {
        logPwdStorage = null
    }
    console.log(logUnameStorage+"�û���");
    console.log(logPwdStorage+"����")
})
