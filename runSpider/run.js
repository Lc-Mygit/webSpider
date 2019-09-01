/**
 * @author 李程
 * @description 专门运行爬虫抓取网站数据的的文件
 * @date  2019-08-24
 * 
 * @ 下方是引进的依赖。
 */ 
const cheerio = require("cheerio");
const charset = require("superagent");
const superagent = require("superagent-charset")(charset); //设置字符，可解决乱码的问题。
const fs = require('fs');
const request = require('request');
const schedule = require('node-schedule');  //定时任务
const socket = require("../webSocket/serverSocket");

const mysql = require("../mysql/mysql"); //引进数据库

/** 
*
* @param        目标网址:  https://www.vipyl.com 
* @description  爬取  雨露文章网的数据。
* @date         2019-08-25 星期日
*
*/

const runItme = function () {
    return new Promise((resolve, reject) => {
        let WebUrl = "https://www.vipyl.com";
        //定义接收的数据类型。
        let getDataArr = [];
        //请求目标网站数据
        superagent.get(WebUrl).charset("gbk").end( (err,res)=>{
            if(err){
                console.log("爬取请求报错了...");
                return
            }
            let $ = cheerio.load(res.text,{decodeEntities: false}); //解决Unicode 编码
            //可以开始解析页面
           $(".tonglei").find(".rightnr a").each(function(index,item){
                getDataArr.push({   //iconv.decode( $(this).text(),'gbk') //转码   
                  title:$(this).text()
                })
            })
            console.log( getDataArr)
           
            resolve(getDataArr)
        })
        
    });
}

/**
 * @param        目标网址:  http://www.xinwentoutiao.net/ 
 * @description  爬取  新闻头条-今天头条的热点新闻数据。
 * @date         2019-08-25 星期日
 * 
 */
 const GetHeadlinesData = function(){
    return new Promise((resolve,reject)=>{
        let WebUrl = "http://www.xinwentoutiao.net/";
        superagent.get("http://www.xinwentoutiao.net/").end( (err,res)=>{
            if(err){
                console.log("新闻头条 报错了");
                return
            }
            //运行获取数据的区域
            let $ = cheerio.load( res.text);
            let getDataArr = [];//获取到的 存储数据
            let objData ={};
            $(".slider .d01").each( function(index,item){
               if( $(this).find(".title span").text() === "今天头条" ){
                    $(this).find("ul li").each( function(index,item){
                        if(  index !== 10 ){ 
                            $(item).find("table td").each( function(index,item){
                                    switch(index){
                                        case 0:
                                            objData.order = $(item).text();
                                            break;
                                        case 1:
                                            objData.title = $(item).text();
                                            break;    
                                        case 2:
                                            objData.lastTime = $(item).text();
                                            break;   
                                        case 3:
                                            objData.heatCout = $(item).text();
                                            break;     
                                    }
                            });
                            let tempObj = JSON.stringify( objData );
                            getDataArr.push( JSON.parse( tempObj ) ); 
                            objData ={};
                        }   
                    });
               }
              
            })
            resolve(getDataArr)
        });
    });
 }   

/**
 * @param  目标网址: https://mp.weixin.qq.com/s?__biz=MzAxNDE4NDA3Mg==&mid=2651263138&idx=1&sn=c79c0065fc2ad1d3e0a4e29bb26f94e6&chksm=80648b45b7130253c2b6b9c69979f1d6afac8a8463fdfdf23f9e1efa738c5de80f697fee48e0&mpshare=1&scene=23&srcid=&sharer_sharetime=1566869001416&sharer_shareid=0785ee0aecf5d943454373b4c58883fe#rd
 * @description  爬取  图片的数据，下载到本地文件。
 * 
 */
const DownloadImg = function(){
    return new Promise( (resolve,reject)=>{
        let targetUrl = "https://www.umei.cc/";
        let imgs = [];//保存图片
        superagent.get(targetUrl).end( (err,res)=>{
                if(err){
                    console.log("报错，返回",err);
                    return
                }         
                let $ = cheerio.load(res.text); //解决Unicode 编码
                $("body img").each( function(index,item){ 
                     imgs.push({ imgUrl: $(this).attr("src"), 
                                index:index
                     })
                });
                console.log(imgs)
                resolve(imgs)
                
               //存放数据
               mkdir('./imgs',downloadImg,imgs); 

        });
        
    });
    /**
     * 创建文件的目录
     * 
     */
    function mkdir(_path,callback,_ImgDataArr){

        if(fs.existsSync(_path)){
            
            console.log(`${_path}目录已存在`)

        }else{
            fs.mkdir(_path,(error)=>{
                if(error){
                    return console.log(`创建${_path}目录失败`);
                }
                console.log(`创建${_path}目录成功`)
                callback(_ImgDataArr); //没有生成指定目录不会执行
            })
        }
        
    } 

    //下载爬到的图片
    function downloadImg(imgs) {
            imgs.forEach((_imgUrl,index) => {
             //   console.log(_imgUrl.imgUrl)
            //获取图片名 
             let imgName = _imgUrl.imgUrl.split('/').pop();
            
            //下载图片存放到指定目录
            console.log("");
            let stream = fs.createWriteStream(`./imgs/${imgName}`);
        
            let req = request.get(_imgUrl.imgUrl); //响应流
        
            req.pipe(stream);
            console.log(`开始下载图片${_imgUrl.imgUrl} --> ./imgs/${_imgUrl.imgUrl.split('/').pop()}`);     
        });
    }

}

/**
 *@description 定时爬取数据 足球比分的数据， 
 * 
 *@param       目标网址:http://live.win007.com/
 * 
 */

const IMsportsScore =  function(){
    return new Promise( (resolve,reject)=>{
        let WebUrl ="https://live.huanhuba.com/"; //https://live.611.com/zq
        let getArr=[];
        superagent.get(WebUrl).end( (err,res)=>{
            if(err){
                console.log("请求体育比分出现报错了")
                return
            }
            //console.log( res.text )
            let $ = cheerio.load(res.text);
            $(".match-table").find(".match-content-item").each( (index,item)=>{
                //console.log($(item).find(".league a").text(),index )   
                getArr.push({
                        league:$(item).find(".league a").text().trim(), //赛事
                        time:$(item).find(".time").text().trim(),//比赛时间
                        status:$(item).find(".status .time").text().trim(), //状态
                        homeTeam: $(item).find(".home .team-name").text().trim(), //主队
                        homeScore: $(item).find(".playing .home-score").text().trim() ? $(item).find(".playing .home-score").text().trim():0, //主队比分
                        awayScore:  $(item).find(".playing .home-score").text().trim() ? $(item).find(".playing .away-score").text().trim():0, //客队比分
                        awayTeam: $(item).find(".away .team-name").text().trim(), //主队  
                })
             });
           
            resolve(getArr);

        });
    });
}

/***
 * @description 获取 足球完场比分入库。
 * @parma       目标网站:https://free.leisu.com/wanchang?time=20190828&width=720&theme=red
 * 
 * */
//自定义当前时间对象
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
const finishScore = function(){
   
    return new Promise( (resolve,reject)=>{
        let today = new Date().Format('yyyyMMdd'); //当天的时间 
        let webUrl = "https://free.leisu.com/wanchang?time=20190819"//+today;
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
                TempArr.push("2019-08-19")
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

                TempArr.push(new Date().Format('yyyy-MM-dd HH:mm:ss'))

               /* getArr.push({
                    league_img:$(item).find(".event-icon").attr("style"),
                    league:$(item).find(".event-name").text().trim(),
                    playTime: $(item).find(".lab-time").text().trim(),
                    homeTeam:$(item).find(".lab-team-home .name").text().trim(),  
                    homeTeam_score: $(item).find(".lab-score .score").text().trim()[0],
                    awayTeam_score: $(item).find(".lab-score .score").text().trim()[2],
                    awayTeam:$(item).find(".lab-team-away .name").text().trim(),
                    entry_time:new Date().Format('yyyy-MM-dd') 
                })*/
                getArr.push( TempArr );     
                  
            });
           //console.log(getArr)
         
         

            resolve(getArr)
        });
    });
}
0-2




socket.on('connection', (ws) => {
    // 通过 ws 对象，就可以获取到客户端发送过来的信息和主动推送信息给客户端
    schedule.scheduleJob('0-59 * * * * *',()=>{
        //即时比分的运行
        IMsportsScore().then( data=>{  
            ws.send( JSON.stringify( data[0] ) ) // 每隔 1 秒给连接方报一次数  
            //ws.close();
        })
       
    })    
})

const  scheduleCronstyle =  function(){
    //每分钟的第30秒定时执行一次:
      schedule.scheduleJob('0-59 * * * * *',()=>{
       
        //  console.log('scheduleCronstyle--------定时任务启动:' + new Date());
       
      }); 
  }
  
//把模块推出暴露，让逻辑页面引用。
module.exports = {
   //runSpider: runItme
   //runSpider:GetHeadlinesData
  // runSpider:DownloadImg,
   runSpider:IMsportsScore,
   schedule:scheduleCronstyle,
   finishScore:finishScore
}