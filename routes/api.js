const Router = require("koa-router"); //Koa2 路由导入
const router = new Router(); //实例化路由
const mysql = require("../mysql/mysql");

const getWebData = require("../runSpider/run"); //专门写爬虫的模块
//getWebData.schedule()//执行定时任务
//执行向页面发送信息
router.get("/", async (ctx, next) => {
    
    
    //let res = await mysql.query("truncate table end_footballscore");
    let WebData = await getWebData.finishScore();
    await mysql.query("truncate table end_footballscore")
    WebData.forEach( function(item){ 
        let addSql = 'INSERT INTO end_footballscore(league_img,league,playTime,homeTeam,homeTeam_score,awayTeam_score,awayTeam) VALUES (?,?,?,?,?,?,?)';
        
        mysql.query(addSql,item);
    });

    let reslut = await mysql.query("SELECT * FROM end_footballscore");
    

    ctx.response.body =  {
        status:true,
        message:"成功爬取内容",
        data:reslut//WebData
    } 
   
    
});

module.exports = router;