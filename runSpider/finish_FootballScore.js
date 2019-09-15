/**
 * @author 李程
 * @description 专门运行爬虫抓取 完场足球比分 数据的，进行采集入库。
 * @date  2019-09-04
 * 
 */

const cheerio = require("cheerio");
const charset = require("superagent");
const superagent = require("superagent-charset")(charset); //设置字符，可解决乱码的问题。
const schedule = require('node-schedule');  //定时任务
const mysql = require("../mysql/mysql"); //引进数据库


/***
 * @description 获取 足球完场比分入库。
 * @parma       目标网站:https://free.leisu.com/wanchang?time=20190828
 * 
 * */
const finishScore =  function(){
    return new Promise( (resolve,reject)=>{
        let today = new Date(new Date().getTime() - 24*60*60*1000).Format('yyyyMMdd'); //昨天的时间 
        let webUrl = "https://free.leisu.com/wanchang?time="+today//+today;
        superagent.get(webUrl).end( (err,res)=>{
            if(err){
                console.log("请求获取完场比分 报错了");
                return
            }
            let $ = cheerio.load(res.text);
            let getArr =[]; //临时存储数据
            $(".layout-grid-list li").each( function(index,item){
               
                let score =  $(item).find(".lab-score .score").text().trim().trim().split("-");   //格式化进球数
                //格式化赛事图标
                let ImgurlStr = "http:"+ $(item).find(".event-icon").attr("style").trim().substring( ($(item).find(".event-icon").attr("style").trim().indexOf("(")+1), $(item).find(".event-icon").attr("style").trim().indexOf(")")) ;              
                

                let TempArr=[];
                TempArr.push( ImgurlStr )
                TempArr.push( $(item).find(".event-name").text().trim() )
                TempArr.push( new Date( Number( $(this).attr("data-nowtime") )*1000 ).Format('yyyy-MM-dd') ); //昨天        
                TempArr.push( $(item).find(".lab-time").text().trim())
                TempArr.push($(item).find(".lab-team-home .name").text().trim() )
                TempArr.push( score[0])
                TempArr.push( score[1])
                TempArr.push(  $(item).find(".lab-team-away .name").text().trim()  ) 
                //主队 客队红牌数
                TempArr.push(  $(item).find(".lab-team-home .homeredcards").text().trim()  )
                TempArr.push(  $(item).find(".lab-team-away .awayredcards").text().trim()  )
                 //主队 客队黄牌数
                TempArr.push(  $(item).find(".lab-team-home .homeyellowcards").text().trim()  )
                TempArr.push(  $(item).find(".lab-team-away .awayyellowcards").text().trim()  )
                TempArr.push( new Date().Format('yyyy-MM-dd HH:mm:ss'))
                
                getArr.push(TempArr);

                resolve(getArr); 
        
            });
        });
    });
}


//这里是执行 定时 爬取页面的数据，然后判断 入数据库。
const  scheduleCronstyle =  function(){
    //每分钟的第30秒定时执行一次:
      schedule.scheduleJob('59 * * * * *', async ()=>{
        //  await mysql.query("truncate table end_footballscore")
          let WebData = await finishScore();  
          let SQLArr = await mysql.query("SELECT * FROM end_footballscore WHERE matchDate=' "+new Date( new Date().getTime() - 24*60*60*1000 ).Format('yyyy-MM-dd')+" '"); 
          let tempArr =[];
        //写判断逻辑，判断数据库是否重复的数据。  
          if(SQLArr.length === 0){
            let addSql = "INSERT INTO end_footballscore(`league_img`,`league`,`matchDate`,`playTime`,`homeTeam`,`homeTeam_score`,`awayTeam_score`,`awayTeam`,`home_redCard`,`away_redCard`,`home_yellowCard`,`away_yellowCard`,`createTime`) VALUES ?";
            await mysql.query(addSql,[WebData]);
          }else{
            WebData.forEach( (itemArr,index)=>{
                let flag = false;
                SQLArr.forEach( sqlItem=>{
                    if(sqlItem.league === itemArr[1] && new Date(sqlItem.matchDate).Format("yyyy-MM-dd") === itemArr[2] && sqlItem.homeTeam === itemArr[4] && sqlItem.awayTeam == itemArr[7]){
                        flag = true;
                    }
                });
                if(!flag){
                    tempArr.push(itemArr)
                }
            });
            if( tempArr.length > 0){
                let addSql = "INSERT INTO end_footballscore(`league_img`,`league`,`matchDate`,`playTime`,`homeTeam`,`homeTeam_score`,`awayTeam_score`,`awayTeam`,`home_redCard`,`away_redCard`,`home_yellowCard`,`away_yellowCard`,`createTime`) VALUES ?";
                await mysql.query(addSql,[tempArr]);
            } 

          }

         console.log('自动采集足球完场比分程序启动==============>' + new Date().Format('yyyy-MM-dd HH:mm:ss') );
        

      }); 
  }
  

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
    }

  //执行定时爬虫任务启动
  scheduleCronstyle();

  //把模块推出暴露 
  module.exports = finishScore;