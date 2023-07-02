<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/20
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script type="text/javascript">
      function getAjax(){
        //三种方式都判断一下是否支持
        var xmlHttpRequest;
        if (window.ActiveXObject){
          xmlHttpRequest = new ActiveXObject("MicroSoft.XMLHTTP");
          if (!xmlHttpRequest){
            xmlHttpRequest = new ActiveXObject("Msxml2.XMLHTTP")
          }
        } else {
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
      var xhr;//做一个全局变量
      function showcity(){
        xhr=getAjax();//获取ajax对象
        xhr.open("POST","jieshou.jsp",true);//调用open方法,设置请求参数
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xhr.send("province="+document.getElementById("province").value);//传值到后端
        xhr.onreadystatechange=chuli;//状态码改变调用该方法
      }

      function chuli(){
        if(xhr.readyState==4){
          var citys = xhr.responseXML.getElementsByTagName("city");//拿到后端传回的xml文档对象
          document.getElementById("city").length=1;//每回选择后select标签中option的个数回归1，重新添加option
          for(var i=0;i<citys.length;i++){
            var myoption = document.createElement("option");//创建option元素
            myoption.innerText = citys[i].childNodes[0].nodeValue;//拿到元素节点的文本节点
            document.getElementById("city").appendChild(myoption);
          }
        }
      }


    </script>
  </head>
  <body bgcolor="#ffc0cb">

  <div align="center" style="background-color: yellow">
    <h1>请选择地址</h1>
    <form method="post" action="">

      <select id="province" onchange="showcity();">
        <option>---省---</option>
        <option value="山西">山西</option>
        <option value="河北">河北</option>
      </select>

      <select id="city">
        <option>---市---</option>
      </select>

      <select>
        <option>---县---</option>
      </select>

    </form>
  </div>
  </body>
</html>
