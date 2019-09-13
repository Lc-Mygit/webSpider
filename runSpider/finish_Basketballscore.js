/**
 * @author 李程
 * @description 专门运行爬虫抓取 完场篮球比分 数据的，进行采集入库。
 * @date  2019-09-11
 *  
 */

const cheerio = require("cheerio");
const charset = require("superagent");
const superagent = require("superagent-charset")(charset); //设置字符，可解决乱码的问题。
const schedule = require('node-schedule');  //定时任务
const mysql = require("../mysql/mysql"); //引进数据库


/**
 * 主函数
 * 获取目标网站进行 完场篮球比分的数据采集
 * https://live.leisu.com/lanqiu/wanchang?date=20190910
 */
const finishBackballScore =  function(){
    return new Promise( (resolve,reject)=>{
        let Yesterday = new Date(new Date().getTime() - 24*60*60*1000).Format('yyyyMMdd'); //昨天的时间 
        let webUrl = "https://live.leisu.com/lanqiu/wanchang?date="+Yesterday;
        superagent.get(webUrl).end( (err,res)=>{
            if(err){
                console.log("请求获取篮球赛果 报错了==>",new Date().Format('yyyy-MM-dd HH:mm:ss') );
                return
            }
            //可执行解析操作
            let $ = cheerio.load(res.text);
            let getArr =[]; //临时存储数据
            $(".layout-grid-list .list-item").each( (index,item)=>{
                let tempArr = []; 

            //获取比赛日期时间
                tempArr.push( new Date( Number($(item).attr("data-time") ) * 1000 ).Format('yyyy-MM-dd HH:mm:ss') );
                //获取赛事名,已经字符串切割解析。
                tempArr.push( $(item).find(".thead .h2-title .lang").text().trim().substring( 0 , $(item).find(".thead .h2-title .lang").text().trim().length /2 ) );
            //获取主队logo图,需要操作字符串切割 进行解析操作
                let Tone = $(item).find(".d-row .r-left .tbody-one .ico").attr("style").indexOf("(")+1;
                let Tend = $(item).find(".d-row .r-left .tbody-one .ico").attr("style").indexOf(")");
                tempArr.push( "http:"+$(item).find(".d-row .r-left .tbody-one .ico").attr("style").substring(Tone,Tend));
            //获取客队logo图,需要操作字符串切割 进行解析操作
                let Aone = $(item).find(".d-row .r-left .tbody-tow .ico").attr("style").indexOf("(")+1;
                let Aend = $(item).find(".d-row .r-left .tbody-tow .ico").attr("style").indexOf(")");
                tempArr.push( "http:"+$(item).find(".d-row .r-left .tbody-tow .ico").attr("style").substring(Aone,Aend));
            //获取主队名字    
                let homeTeam = $(item).find(".d-row .r-left .tbody-one .name .lang").text().trim().substring(0,$(item).find(".d-row .r-left .tbody-one .name .lang").text().trim().length/2);
                tempArr.push(homeTeam);
            //获取主队第一 二 三 四节得分
                tempArr.push( $(item).find(".d-row .r-left .tbody-one .race-node div.col-4").eq(0).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-one .race-node div.col-4").eq(1).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-one .race-node div.col-4").eq(2).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-one .race-node div.col-4").eq(3).text().trim() );
                /*$(item).find(".d-row .r-left .tbody-one .race-node div.col-4").each((_index,node)=>{
                    if( $(node).text() && $(node).text().trim() !== "-" ){ 
                        tempArr.push( $(node).text().trim() );
                    }else{
                        tempArr.push("0");
                    }
                });*/
            //获取主队总得分    
                tempArr.push($(item).find(".d-row .r-left .tbody-one b.full-court").text().trim());

                /*if( $(item).find(".d-row .r-left .tbody-one b.full-court").text() &&  $(item).find(".d-row .r-left .tbody-one b.full-court").text().trim() !== "-" ){ 
                    tempArr.push( $(item).find(".d-row .r-left .tbody-one b.full-court").text().trim());
                }else{
                    tempArr.push("")
                }*/
               
          
            //获取客队名字    
                let awayTeam = $(item).find(".d-row .r-left .tbody-tow .name .lang").text().trim().substring(0,$(item).find(".d-row .r-left .tbody-tow .name .lang").text().trim().length/2);
                tempArr.push(awayTeam);
            //获取客队 第一 二  四 节得分   
                tempArr.push( $(item).find(".d-row .r-left .tbody-tow .race-node div.col-4").eq(0).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-tow .race-node div.col-4").eq(1).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-tow .race-node div.col-4").eq(2).text().trim() );
                tempArr.push( $(item).find(".d-row .r-left .tbody-tow .race-node div.col-4").eq(3).text().trim() );

                /*$(item).find(".d-row .r-left .tbody-tow .race-node div.col-4").each((_index,node)=>{
                    if( $(node).text() && $(node).text().trim() !== "-" ){ 
                        tempArr.push($(node).text().trim());
                    }else{
                        tempArr.push("");
                    }
                })*/
            //获取客队总得分
                tempArr.push( $(item).find(".d-row .r-left .tbody-tow b.full-court").text().trim() );

                /*if( $(item).find(".d-row .r-left .tbody-tow b.full-court").text() && $(item).find(".d-row .r-left .tbody-tow b.full-court").text().trim() !== "-" ){ 
                    //tempArr.push(  $(item).find(".d-row .r-left .tbody-tow b.full-court").text().trim()); 
                }else{
                    //tempArr.push("")
                }*/

            //主客队半场得分,字符串截取解析
                if( $(item).find(".d-row .r-left .tbody-tow .half-score").text() && $(item).find(".d-row .r-left .tbody-tow .half-score").text().trim() ){ 
                   let _i = $(item).find(".d-row .r-left .tbody-tow .half-score").text().trim().indexOf(":")+1;
                   let halfScore =  $(item).find(".d-row .r-left .tbody-tow .half-score").text().trim().substring(_i, $(item).find(".d-row .r-left .tbody-tow .half-score").text().trim().length);
                   tempArr.push( halfScore.trim());
                }else{
                    tempArr.push("-");
                }   

            //主客队的全场总得分
                if( $(item).find(".d-row .r-left .tbody-one .total-score").text() && $(item).find(".d-row .r-left .tbody-one .total-score").text().trim() ){ 
                   let total_index = $(item).find(".d-row .r-left .tbody-one .total-score").text().trim().indexOf(":")+1;
                   let TotalScore =  $(item).find(".d-row .r-left .tbody-one .total-score").text().trim().substring(total_index,$(item).find(".d-row .r-left .tbody-one .total-score").text().trim().length);
                   tempArr.push( TotalScore.trim());
                }else{
                   tempArr.push("-");
                }   
            
            //入库日期时间
                tempArr.push( new Date().Format('yyyy-MM-dd HH:mm:ss'))   
                    
                   
            //加载到存储的数组       
                getArr.push(tempArr);

            });
           
            resolve(getArr)
        });
    })
}


//定时采集篮球完场数据的任务函数
const CollectionTask = function(){
    //每分钟的第30秒定时执行一次:
    schedule.scheduleJob('30 0-59 * * * *', async ()=>{
       // let WebData = await finishBackballScore();  
       /* await mysql.query("truncate table end_basketballscore");

        let addSql = "INSERT INTO end_basketballscore(`matchDate`,`league`,`matchDate`,`homeTeam_img`,`awayTeam_img`,`homeTeam`,`homeTeam_Section1`,`homeTeam_Section2`,`homeTeam_Section3`,`homeTeam_Section4`,`homeTeam_Total`,`awayTeam`,`awayTeam_Section1`,`awayTeam_Section2`,`awayTeam_Section3`,`awayTeam_Section4`,`awayTeam_Total`,`HalfScore`,`TotalScore`,`createTime`) VALUES ?"
        
        await mysql.query(addSql,[WebData]);
    */
        //new Date( new Date().getTime() - 24*60*60*1000 ).Format('yyyy-MM-dd')
        //let Isjudge = await mysql.query("SELECT * FROM end_basketballscore WHERE matchDate=' "++" '");
        //console.log(Isjudge.length)


        console.log("自动采集篮球完场数据======>",  new Date().Format('yyyy-MM-dd HH:mm:ss') )
    })
}
//自动爬取启动
CollectionTask();




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


//暴露文件，让外面引用.
module.exports = finishBackballScore;
