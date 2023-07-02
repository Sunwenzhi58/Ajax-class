<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/30
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  String username = request.getParameter("username"); username = java.net.URLDecoder.decode(username.toString(),"utf-8");
  System.out.println(username);
  String loginuser = (String)session.getAttribute("loginuser");
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <script type="text/javascript" src="My.js"></script>
  <script type="text/javascript"> window.resizeTo(600,600);
  //window.setInterval("getMsg()",10000);
  //定义一个 ajax 引擎
  function sendMsg(){ var myXmlHttpRequest=getXmlHttpObject();
//怎么判断创建 ok
    if(myXmlHttpRequest){ var url = "/chat/sendMessageController.jsp"; var data ="con=" + $("con").value + "&getter=<%= username%>&sender=<%= loginuser%>"; window.alert(data); myXmlHttpRequest.open("post",url,true);
  //指定回调函数.chuli 是函数名
      myXmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); myXmlHttpRequest.onreadystatechange = function (){
        if(myXmlHttpRequest.readyState==4){ window.alert(myXmlHttpRequest.status);
        }
      };
      myXmlHttpRequest.send(data);
      $("mytextares").value += "你对<%= username%>说：" + $("con").value + " " +new Date().toLocaleString()
              +"\r\n";
      $("con").value = "";
    }
  }
  //每隔一定时间 从 服务器得到属于自己的 消息
  function getMsg(){ var myXmlHttpRequest=getXmlHttpObject();
//怎么判断创建 ok
    if(myXmlHttpRequest){
      var url = "/chat/getMessageController.jsp"; var data = "getter=<%= loginuser%>&sender=<%= username%>"; window.alert(data); myXmlHttpRequest.open("post",url,true);
//指定回调函数.chuli 是函数名
      myXmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); myXmlHttpRequest.onreadystatechange = function (){
        if(myXmlHttpRequest.readyState==4){ window.alert(myXmlHttpRequest.status); window.alert(myXmlHttpRequest.responseText); var mydata = eval("(" + myXmlHttpRequest.responseText + ")"); window.alert(mydata.length);
          for(var i=0;i<mydata.length;i++){
            $("mytextares").value += mydata[i].sender + " 对 你 说 ： " + mydata[i].content + " " + mydata[i].sendTime +"\r\n";
          }
        }
      }
      myXmlHttpRequest.send(data);
    }
  }
  </script>
</head>
<body>
<center>
  我的聊天室(您在和<font color="red"><%= username%></font>聊天) <br>
  <textarea rows="10" id="mytextares" cols="50"></textarea><br/>
  <input type="text" id="con">
  <input type="button" onclick="sendMsg();" value="发送"><br>
  <input type="button" onclick="getMsg();" value="获取">
</center>
</body>
</html>
