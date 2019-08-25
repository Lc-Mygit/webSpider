/**
 * @author 李程
 * @description 专门运行爬虫抓取网站数据的的文件
 * @date  2019-08-24
 * 
 * 
 */

const superagent = require("superagent");
const cheerio = require("cheerio");
const  request =  require("request");

//字符集gbk，gb2312中文乱码的解决方法  解码
const iconv = require('iconv-lite')

/*
 *执行函数请求
 * 
 */
const runItme = function () {
    return new Promise((resolve, reject) => {
        let WebUrl = "https://www.vipyl.com";

        //定义接收的数据类型。
        let getDataArr = [];
        //请求目标网站数据
        request({
            url: WebUrl,
            method: "GET",
            // gzip:true,
            encoding:null//获取的内容不编码，二进制
        }, function(err, res, body) {
            // console.log(response);
            if (!err) {
               
                let strJson = iconv.decode(body,"gb2312"); //进行gbk解码
                let $ = cheerio.load(strJson,{decodeEntities: false}); //解决Unicode 编码
                
                $(".tonglei #artadd").find("li").each(function(index,item){
                    getDataArr.push({   
                         title:$(this).find(".rightnr a").text(),
                   //   description: $(this).find(".rightnr span").text().substring(0,$(this).find(".rightnr span").text().length-10) ,
                   //      ImgUrl:WebUrl+$(this).find(".leftimg img").attr("src"),
                  //    jumpUrl:WebUrl+$(this).find(".rightnr a").attr("href"),
                     // Date:$(this).find(".rightnr span i").text(),
                        
                    })
                });


                resolve(getDataArr);
            }
        })    
        
        /*superagent.get(WebUrl).end( (err,res)=>{
            if(err){
                console.log("爬取请求报错了...");
                return
            }
            let strJson = iconv.decode(res.text,"gb2312"); //进行gb2312解码

            let $ = cheerio.load(strJson,{decodeEntities: false}); //解决Unicode 编码

            //可以开始解析页面
           $(".tonglei").find(".rightnr a").each(function(index,item){
                getDataArr.push({   //iconv.decode( $(this).text(),'gbk') //转码   
                  title:$(this).text()
                })
            })
            console.log( getDataArr )
            resolve("嘿嘿")
        })
        */
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





//把模块推出暴露，让逻辑页面引用。
module.exports = {
   // runSpider: runItme
   runSpider:GetHeadlinesData
}