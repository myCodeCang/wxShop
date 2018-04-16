//商城地址
var CONS_QY_SHOP_URL ="http://shop.ugxsuuu.com";

var BATH_PATH = "../script/";

//初始化框架
function qySoftInit(basePath){

	BATH_PATH = basePath;	

	layui.config({
	  base: basePath  //假设这是test.js所在的目录
	}).extend({ //设定模块别名
	   'qyWin': 'qyModule/qyWin' //如果test.js是在根目录，也可以不用设定别名
	  ,'qyForm':'qyModule/qyForm'
	  ,'template':'template/template-web'
	  ,'api':'aui/api'
	  ,'auiTab':'aui/aui-tab'
	  ,'qyShop':'qyModule/qyShop'
	  ,'menudown':'qyModule/menudown'
	  ,'zepto':  'zepto/zepto.min'
	  ,'aui-pull-refresh':'aui/aui-pull-refresh'
	});

}
