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
            console.log( getDataArr )
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
            })
        }
        
        callback(_ImgDataArr); //没有生成指定目录不会执行
        
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


//把模块推出暴露，让逻辑页面引用。
module.exports = {
   //runSpider: runItme
   //runSpider:GetHeadlinesData
   runSpider:DownloadImg
}