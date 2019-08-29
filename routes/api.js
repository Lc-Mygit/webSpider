const Router = require("koa-router"); //Koa2 路由导入
const router = new Router(); //实例化路由
const mysql = require("../mysql/mysql");

const getWebData = require("../runSpider/run"); //专门写爬虫的模块
//getWebData.schedule()//执行定时任务
//执行向页面发送信息
router.get("/", async (ctx, next) => {
    
   // let reslut =  await mysql.query("SELECT * FROM end_footballscore");
    let WebData = await getWebData.finishScore();
    ctx.response.body =  {
        status:true,
        message:"成功爬取内容",
        data:WebData
    } 

});

module.exports = router;