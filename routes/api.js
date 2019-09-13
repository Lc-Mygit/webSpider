const Router = require("koa-router"); //Koa2 路由导入
const router = new Router(); //实例化路由
const mysql = require("../mysql/mysql");

const finishScore = require("../runSpider/finish_FootballScore"); //专门写爬虫的模块
const todayNews = require("../runSpider/todayNews");//运行今日头条的推荐新闻爬取数据。
const Basketballscore = require("../runSpider/finish_Basketballscore");//运行篮球完成比分的数据采集



//执行向页面发送信息
router.get("/", async (ctx, next) => {
    
    await mysql.query("truncate table basketballscore");
    let WebData = await Basketballscore();

    let addSql = "INSERT INTO basketballscore(matchDate,league,homeTeam_img,awayTeam_img,homeTeam,homeTeam_Section1,homeTeam_Section2,homeTeam_Section3,homeTeam_Section4,homeTeam_Total,awayTeam,awayTeam_Section1,awayTeam_Section2,awayTeam_Section3,awayTeam_Section4,awayTeam_Total,halfScore,totalScore,createTime) VALUES ?";
    await mysql.query(addSql,[WebData]);
   
    /*let addSql =  'INSERT INTO end_basketballscore SET  ?'
    let objData = {
        matchDate:"2019-09-11 19:00:00",
        league:"篮世杯",
        homeTeam_img:"http://cdn.leisu.com/basketball/teamflag_s/d3282e1a7aad9ed478776de3a76080ba.gif?imageView2/2/w/32",
        awayTeam_img:"http://cdn.leisu.com/basketball/teamflag_s/fc0e73d32f430194dd056b7745f8ee8a.gif?imageView2/2/w/32",
        homeTeam:"法国",
        homeTeam_Section_one:18,
        homeTeam_Section_two:27,
        homeTeam_Section_three:18,
        homeTeam_Section_four:26,
        homeTeam_Total:89,
        awayTeam:"美国",
        awayTeam_Section_one:18,
        awayTeam_Section_two:21,
        awayTeam_Section_three:27,
        awayTeam_Section_four:13,
        awayTeam_Total:79,
        HalfScore:84,
        TotalScore:168,
        createTime:new Date().Format('yyyy-MM-dd HH:mm:ss')
    }   
    await mysql.query(addSql,objData)*/
    

    let temp =await mysql.query("SELECT * FROM basketballscore");
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