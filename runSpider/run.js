/**
 * @author 李程
 * @description 专门爬取 https://www.vipyl.com/  雨露文章网的数据
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
                      description: $(this).find(".rightnr span").text().substring(0,$(this).find(".rightnr span").text().length-10) ,
                      ImgUrl:WebUrl+$(this).find(".leftimg img").attr("src"),
                      jumpUrl:WebUrl+$(this).find(".rightnr a").attr("href"),
                      Date:$(this).find(".rightnr span i").text(),
                        
                    })
                });


                resolve(getDataArr);
            }
        })    
        
        /*superagent.get(WebUrl).end( (err,res,body)=>{
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




//把模块推出暴露，让逻辑页面引用。
module.exports = {
    runSpider: runItme

}