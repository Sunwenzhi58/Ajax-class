<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/30
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript"> window.resizeTo(200,600);
    function abc(obj){
//window.alert(obj.tagName); obj.style.color="red"; obj.style.cursor="hand";
    }
    function abc2(obj){ obj.style.color="";
    }
    //跳出一个聊天的页面
    function abc3(obj){
        var username=obj.innerText;
        //alert(username);
window.open("chatRoom.jsp?username="+username,"_blank"); username = encodeURI(encodeURI(username));
username = encodeURI(username); window.open("chatRoom.jsp?username="+username,"_blank");
    }
    </script>
</head>
<body>
<h1>好友列表</h1><br>
<ol>
    <li id="li1" onmouseover="abc(this)" onclick="abc3(this);" onmouseout="abc2(this)">张三</li>
    <li id="li2" onmouseover="abc(this)" onclick="abc3(this);" onmouseout="abc2(this)">李四</li>
    <li id="li3" onmouseover="abc(this)" onclick="abc3(this);" onmouseout="abc2(this)">王五</li>
</ol>
</body>
</html>