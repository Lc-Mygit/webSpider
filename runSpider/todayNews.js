/**
 * @author  李程
 * @date    2019-09-07
 * @description  专门爬取今日头条 推荐的头条新闻。
 * 
 */


const cheerio = require("cheerio");
const charset = require("superagent");
const superagent = require("superagent-charset")(charset); //设置字符，可解决乱码的问题。
const schedule = require('node-schedule');  //定时任务


//主函数的程序
/**
 * ----要爬取的字段 
 * @title           标题
 * @label           标签
 * @source          来源
 * @commentCont     评论数
 * @createTime      创建时间
 * 
 * @url  https://www.toutiao.com/     目标网址 今日头条首页           
 */
const MainFun =  async function(){
    return new Promise(  (resolve,reject)=>{
        let webUrl = "https://www.toutiao.com/api/pc/feed/?category=news_sports&utm_source=toutiao&widen=1&max_behot_time=0&max_behot_time_tmp=0&tadrequire=true&as=A1656D97B677121&cp=5D76F7F142214E1&_signature=tj6WdQAA61Z4VRCnynBE3rY-lm";
        let newsArr=[];

        superagent.get(webUrl)
        .end( (err,res)=>{
            if(err){
                console.log("爬取今日头条出现了异常了!!",err);
                resolve(err)
                return
            }
            console.log(res.text)
            let tempArr = [];
            tempArr = JSON.parse(res.text).data;
          
            newsArr = tempArr.map( (item,index)=>{
                return {title:item.title,chinese_tag:item.chinese_tag}
            });
           // console.log(JSON.parse(res.text).data)
            resolve( newsArr);
         
        })
   

    })   


}

//把模块推出去。让别的文件引用
module.exports = MainFun;




