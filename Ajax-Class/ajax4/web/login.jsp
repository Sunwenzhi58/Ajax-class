<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/30
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        #div1{width:500px;
            height:500px;
            background-color:pink;
            position:absolute;
            left:50%;
            top:50%; margin-left:-150px;
            margin-top:-200px;
            text-align:center;
        } </style>
</head>
<body>
<div id="div1">
    <h1>欢迎登录聊天室</h1>
    <form action="loginController.jsp" method="post">
        用户：<input type="text" name="username" size="10"><br/>
        密码：<input type="password" name="password" size="10"><br/>
        <input type="submit" value="登录到聊天室">
    </form>
</div>
</body>
</html>