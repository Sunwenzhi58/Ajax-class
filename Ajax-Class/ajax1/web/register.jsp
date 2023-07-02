<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/5/31
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <script type="text/javascript">
       function getAjax(){
           //三种方式都判断一下是否支持
           var xmlHttpRequest;
           if (window.ActiveXObject){
               xmlHttpRequest = new ActiveXObject("MicroSoft.XMLHTTP");
               if (!xmlHttpRequest){
                   xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP")
               }
           }
           else {
               xmlHttpRequest = new XMLHttpRequest();
               //判断完毕，要么支持，要么不支持
           }
           if (xmlHttpRequest){
               return xmlHttpRequest;
               //alert("您的浏览器支持Ajax")
           }else {
               alert("您的浏览器不支持Ajax")
           }
       }
       //全局变量
       var xmlajax;
       function checkname(){
           xmlajax = getAjax();
           url="/ajax1/jieshou.jsp?username="+document.getElementById("username").value;
           xmlajax.open("GET",url,true)//设置url和方式
           xmlajax.send(null);
           xmlajax.onreadystatechange=chuli;//设置状态改变回调函数
       }

       function chuli(){
           //alert("对象当前状态码是："+xmlajax.readyState)
           if (xmlajax.readyState==4){//如果响应完成
               if (xmlajax.status==200){ //响应完成
                  // alert(xmlajax.responseText);
                   document.getElementById("validate").innerHTML =xmlajax.responseText;
               }else {
                   alert("响应失败");
               }
           }
       }

       function show(){
           document.getElementById("validate").innerHTML ="即将验证用户名";
       }
    </script>
</head>
<body style="text-align: center" bgcolor="#ffc0cb">
<h2 align="center">欢迎来到注册页面</h2>
   <form action="jieshou.jsp" method="post">
       <table align="center" style="background-color: yellow">
           <tr>
               <td>用户名：</td>
               <td><input type="text" name="username" id="username" onblur="checkname()" onfocus="show()"/></td>
               <td><input type="button" name="btn1" value="验证用户名" onclick="checkname()"></td>
               <td id="aa"><span id="validate" style="color: red"></span></td>
           </tr>
           <tr>
               <td>密码：</td>
               <td colspan="3"><input type="password" name="userpass"/></td>
           </tr>
           <tr>
               <td>邮箱：</td>
               <td colspan="3"><input type="text" name="mail"/></td>
           </tr>
           <tr>
               <td colspan="4" align="center"><input type="submit" value="注册 "></td>
           </tr>
       </table>
   </form>


</body>
</html>
