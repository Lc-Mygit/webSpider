const Router = require("koa-router"); //Koa2 路由导入
const router = new Router(); //实例化路由
const mysql = require("../mysql/mysql");

const finishScore = require("../runSpider/finish_FootballScore"); //专门写足球完场比分的爬虫的模块
const todayNews = require("../runSpider/todayNews");//运行今日头条的推荐新闻爬取数据。
const Basketballscore = require("../runSpider/finish_Basketballscore");//运行篮球完成比分的数据采集



//执行向页面发送信息
router.get("/", async (ctx, next) => {
    
    let WebData = await finishScore();

    let temp =await mysql.query("SELECT * FROM end_footballscore");
    ctx.response.body =  {
        status:true,
        message:"成功爬取内容",
        data:temp
          
    } 
    
  
});


//自定义当前时间对象的方法
Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "H+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
    // 用法 new Date().Format('yyyy-MM-dd HH:mm:ss'); //当天的时间 
}


module.exports = router;