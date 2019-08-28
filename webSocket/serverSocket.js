/**
 * @author 李程
 * @date   2019-08-28
 * 
 * @description  运用node webSocket 功能，主动向客户端推送 数据， 应用于即时比分。
 */

const schedule = require('node-schedule');  //定时任务
const WebSocket = require('ws')
const WebSocketServer = WebSocket.Server;


//创建 websocket服务器  监听在 3000端口
const wss = new WebSocketServer({port:3000});




//webSocket 模块暴露出去使用。
module.exports = wss;