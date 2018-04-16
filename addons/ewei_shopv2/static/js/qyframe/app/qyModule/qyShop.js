layui.define(['qyWin','qyForm'],function(exports){ //提示：模块也可以依赖其它模块，如：layui.define('layer', callback);

    var qyWin = layui.qyWin;
    var qyForm = layui.qyForm;

    var obj = {

    openShop : function(shopid){
           var mainMenu ={
                  "menuGroup" : [
                    {
                        "name" :"首页",
                        "label" : "aui-icon-home",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile",
                        "fixBar" : "false"
                    },
                     {
                        "name" :"全部分类",
                        "label" : "aui-icon-menu",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=shop.category&enter=menu",
                        "fixBar" : "false"
                    },                    
                    {
                        "name" :"购物车",
                        "label" : "aui-icon-cart",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=member.cart&enter=menu",
                        "fixBar" : "false"
                    },
                     {
                        "name" :"我的",
                        "label" : "aui-icon-my",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=member&enter=menu",
                        "fixBar" : "false"
                    }
                  ],
                  "frameType":"true"
               };
               qyWin.createMainWin("main",mainMenu);

    },
     openShopWin : function(shopid){
           var mainMenu ={
                  "menuGroup" : [
                    {
                        "name" :"首页",
                        "label" : "aui-icon-home",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile",
                        "fixBar" : "false"
                    },
                     {
                        "name" :"全部分类",
                        "label" : "aui-icon-menu",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=shop.category&enter=menu",
                        "fixBar" : "false"
                    },                    
                    {
                        "name" :"购物车",
                        "label" : "aui-icon-cart",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=member.cart&enter=menu",
                        "fixBar" : "false"
                    },
                     {
                        "name" :"我的",
                        "label" : "aui-icon-my",
                        "url" : CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=member&enter=menu",
                        "fixBar" : "false"
                    }
                  ]
               };
               qyWin.createMainWin("main"+shopid,mainMenu);

    },
    shopLogin: function(shopid,username, password,callback){

        var url = CONS_QY_SHOP_URL+"/app/index.php?i="+shopid+"&c=entry&m=ewei_shopv2&do=mobile&r=account.login";
        var data = {
            mobile : username,
            pwd : password
        }
        qyForm.qyajax(url,data,function(ret){
            if(ret.status == 1){
                 if(callback){
                    callback(true);
                }
            }
            else{

                if(callback){
                    callback(false);
                }

            }
           

        },function(ret){
            if(callback){
                callback(false);
            }

        },{sync:true});
    },
    qyAliPay: function(money, subject, body, tradeNo) {
        /*if (!/^[1-9][0-9]*$/.test(money)) {
            qyWin.toast('充值金额必须是大于0的整数');
            return;
        }*/

        if (!tradeNo) {
            qyWin.toast('交易订单号不能为空');
            return;
        }

        var aliPay = api.require('aliPay');
        aliPay.config({
            partner : '2088721180692945',
            seller : '1650423738@qq.com',
            rsaPriKey : 'MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJrzwyeU1RdcZ131xFonNMeQNDxxM76Gv7T+0hXwoGeUs3zW5vvCsscCIHFvdhx7NcgVVSt4qCgpxZx6XKIigo1ORfHGr9FHKwtjvafbiNlnhVXSI8HvthP+6PvJlMXuKAunhG9wUFO9l8ATCUICvpPPU9toPTffMFgZLoQsfwSTAgMBAAECgYBg9jyeniGiFq6QO2R9TZ9XacNmNyg8BzIbXoG0PPkDGCgg7JFp5XHd2lTW5vqv4+HJrJ+5Li17xHfl7SPeSV4LeS4GYAHAD59Yj0NmhH57U3iNa5hD25OUH/lUKRM2VuBwHXcwUj9JDRpHowEbx1Ni0/9uF/vnWBxD3jRz5QiRUQJBAMpbOe/clS8augJcmgwsh+VD4UI5A5Er60fXW7VIJkw2KH94F6muEwwhSYH+udHQonfhoY4EiAgSSsCwRCmXIc0CQQDEB3xcj6RO5oe/aiG5TmlXrvQeOGCVs2xMQ+ApOkl/60bV2le98mWSHiD87gY/PgGs7X/7pKWT5uHSJIV+A9/fAkEAh1UXnFlT1Jr1R9sSk428nRIWtqlWv2I2Cmf3R3gnVNTrpMR2Xt6ykmw4sx3evHniDnbyCv7w0yUYpWG9VGtlCQJAY/UVOvWb6QewLLDnpWAQYz+5BzfkODGXhYQO57brB6lnI2EE4LybgliOpaqR0OnDXPR2EFEyhSpz9/3bfBhprQJBAJ4jhicXD7xfL1Y9mnPO9kqzHiBUOif0/4/+BlGwC0E+zf4Gsx2L6JiiGxrKsqxtIUlhZ7eA4DmyNt3xlV0G5HQ=',
            rsaPubKey : 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCa88MnlNUXXGdd9cRaJzTHkDQ8cTO+hr+0/tIV8KBnlLN81ub7wrLHAiBxb3YcezXIFVUreKgoKcWcelyiIoKNTkXxxq/RRysLY72n24jZZ4VV0iPB77YT/uj7yZTF7igLp4RvcFBTvZfAEwlCAr6Tz1PbaD033zBYGS6ELH8EkwIDAQAB',
            notifyURL : 'http://yspjy.ngrok.cc/addons/ewei_shopv2/payment/alipay/notify.php'
        }, function(ret, err) {
            if (!ret.status) {
                qyWin.toast('支付失败');
            } else {
                aliPay.pay({
                    subject: subject ? subject : '支付宝支付',// 订单名
                    body: body ? body : 'body',//订单描述
                    amount: money,
                    tradeNO: tradeNo
                }, function(ret, err) {
                    var msg = "支付成功";
                    if (ret.code != '9000') {
                        msg = "支付失败";
                    }

                    qyWin.toast(msg);
                    qyWin.closeWin();
                });
            }
        });
    },
     qyWxPay:function(money,tradeNo){
         if (!tradeNo) {
            qyWin.toast('交易订单号不能为空');
            return;
        }
         wxPay = api.require('wxPay');
         wxPay.config({
                apiKey : 'wx45f2964378ca509e',
                mchId : '1483846582',
                partnerKey : 'liweijia1314haha123hehe321haha51',
                notifyUrl : 'http://app.mayiwb.com/addons/ewei_shopv2/payment/wechat/notify.php'
            }, function(ret, err) {
                var totalFee=money*100;
                if (ret.status) {
                    wxPay.pay({
                                 description : '商城购物',
                                 totalFee : totalFee,
                                 tradeNo : tradeNo
                             }, function(ret, err) {
                                 var msg='';
                                 if (ret.status) {
                                     msg = "支付成功"; 
                                 } else {
                                     msg = "支付失败";
                                 }
                                  qyWin.toast(msg);
                                  qyWin.closeWin();
                             });
                } else {
                    qyWin.toast('支付失败');
                }
            });


    }



    
};

  //输出test接口
  exports('qyShop', obj);
});