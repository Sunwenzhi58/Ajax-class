<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: dell--%>
<%--  Date: 2023/6/11--%>
<%--  Time: 8:39--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--  <head>--%>
<%--    <title>黄金市场报价实时更新系列</title>--%>
<%--    <style>--%>
<%--      td{text-align: center}--%>
<%--    </style>--%>
<%--    <script type="text/javascript" language="JavaScript">--%>
<%--      // function getAjaxObj(){--%>
<%--      //   if(window.ActiveXObject){--%>
<%--      //     xhr = new ActiveXObject("Msxml2.XMLHTTP");//支持低版本--%>
<%--      //--%>
<%--      //     if(!xhr){--%>
<%--      //       xhr = new ActiveXObject("Microsoft.XMLHTTP")//支持高版本--%>
<%--      //     }else--%>
<%--      //       {xhr = new XMLHttpRequest()}; //支持火狐之类的浏览器}--%>
<%--      //     if(xhr)--%>
<%--      //       return xhr;--%>
<%--      //     else--%>
<%--      //       alert("您的浏览器不支持")--%>
<%--      //   }--%>
<%--      //  }--%>
<%--      var xmlhr="";--%>
<%--      function update(){--%>
<%--        //ajax操作--%>
<%--        //1.获取ajax对象--%>
<%--        xmlhr = new XMLHttpRequest();--%>
<%--        //2.设置ajax请求--%>
<%--        xmlhr.open("post","houduan.jsp",true);--%>

<%--        xmlhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");--%>
<%--        //3.发送请求--%>
<%--        xmlhr.send("city=sh&city=ld&city=mosk");--%>
<%--        //4.设置监听--%>
<%--        xmlhr.onreadystatechange =chuli;--%>
<%--       }--%>

<%--      var value;--%>
<%--        function chuli(){--%>
<%--          if(xmlhr.readyState==4&&xmlhr.status==200){--%>
<%--            value = xmlhr.responseText;//接收json字符串--%>
<%--            value = eval(value);//转成json对象--%>
<%--            document.getElementById("sh").innerText=value[0].price;--%>
<%--            document.getElementById("ld").innerText=value[1].price;--%>
<%--            document.getElementById("mosk").innerText=value[2].price;--%>
<%--          }--%>
<%--        }--%>

<%--      window.setInterval("update()",1000);--%>
<%--    </script>--%>
<%--  </head>--%>
<%--  <body bgcolor="yellow">--%>
<%--    <div align="center">--%>
<%--     <h1 style="color: red">黄金市场报价实时更新系列</h1>--%>
<%--       <table bgcolor="pink" border="1">--%>
<%--         <tr><td colspan="3"><h2>国际大都市黄金价格实时展示面板</h2></td></tr>--%>
<%--         <tr>--%>
<%--           <th>城市名称</th>--%>
<%--           <th>实时价格</th>--%>
<%--           <th>价格涨跌</th>--%>
<%--         </tr>--%>
<%--         <tr>--%>
<%--           <td>上海</td>--%>
<%--           <td id="sh">560</td>--%>
<%--           <td>400</td>--%>
<%--         </tr>--%>
<%--         <tr>--%>
<%--           <td>伦敦</td>--%>
<%--           <td id="ld">1200</td>--%>
<%--           <td>200</td>--%>
<%--         </tr>--%>
<%--         <tr>--%>
<%--           <td>莫斯科</td>--%>
<%--           <td id="mosk">660</td>--%>
<%--           <td>440</td>--%>
<%--         </tr>--%>

<%--       </table>--%>
<%--    </div>--%>
<%--  </body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=utf-8"%>
<html><head>
  <script type="text/javascript">
    var myXmlHttpRequest="";
    function updatePrice(){
      //window.alert("ok");
      myXmlHttpRequest=new XMLHttpRequest();
      //怎么判断创建ok
      if(myXmlHttpRequest){


        var data = "city=ld&city=tw&city=dj";
        //window.alert(data);
        myXmlHttpRequest.open("post","goldPricePro.jsp",true);
        //指定回调函数.chuli是函数名
        myXmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        myXmlHttpRequest.onreadystatechange=chuli;
        myXmlHttpRequest.send(data);
      }
    }
    function chuli(){
      if(myXmlHttpRequest.readyState==4){
        //window.alert(myXmlHttpRequest.status);
        //window.alert(myXmlHttpRequest.responseXML);
        var value = myXmlHttpRequest.responseText;
        value = eval("("+value+")");
        document.getElementById("ld").innerText = value[0].price;
        document.getElementById("tw").innerText = value[1].price;
        document.getElementById("dj").innerText = value[2].price;
      }
    }
    window.setInterval("updatePrice()",1000);
  </script>
</head>
<body bgcolor="yellow">
<center>
  <h1 style="color: red">黄金市场报价实时更新系列</h1>
  <table border=1 class="abc" bgcolor="#ffc0cb">
    <tr><td colspan="3"><h2>国际大都市黄金价格实时展示面板</h2></td></tr>
    <tr ><td>市场</td><td>最新价格$</td><td>涨跌</td></tr>
    <tr><td>上海</td><td id="ld">788.7</td><td>211.3</td></tr>
    <tr><td>伦敦</td><td id="tw">854.0</td><td>146.0</td></tr>
    <tr><td>莫斯科</td><td id="dj">1791.3</td><td>791.3</td></tr>
  </table>
<%--  <input type="button" value="点击" onclick="updatePrice();">--%>
</center>
</body>
</html>